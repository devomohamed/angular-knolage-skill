param(
  [string]$TargetPath = (Get-Location).Path
)
$ErrorActionPreference = "Stop"
$BundleRoot = Split-Path -Parent $PSScriptRoot
$Target = (Resolve-Path -LiteralPath $TargetPath).Path

# Install shared instructions and canonical portable skills.
New-Item -ItemType Directory -Force -Path (Join-Path $Target ".agents") | Out-Null
if (Test-Path (Join-Path $Target ".agents\skills")) {
  Remove-Item -Recurse -Force (Join-Path $Target ".agents\skills")
}
Copy-Item -Recurse (Join-Path $BundleRoot ".agents\skills") (Join-Path $Target ".agents\skills")
Copy-Item (Join-Path $BundleRoot "AGENTS.md") $Target -Force
Copy-Item (Join-Path $BundleRoot "CLAUDE.md") $Target -Force

New-Item -ItemType Directory -Force -Path (Join-Path $Target ".github") | Out-Null
Copy-Item (Join-Path $BundleRoot ".github\copilot-instructions.md") (Join-Path $Target ".github") -Force
if (Test-Path (Join-Path $BundleRoot ".github\agents")) {
  New-Item -ItemType Directory -Force -Path (Join-Path $Target ".github\agents") | Out-Null
  Copy-Item (Join-Path $BundleRoot ".github\agents\*") (Join-Path $Target ".github\agents") -Force
}

# Sync skills for each platform from the canonical source.
$Targets = @((Join-Path $Target ".github\skills"), (Join-Path $Target ".claude\skills"))
foreach ($SkillTarget in $Targets) {
  New-Item -ItemType Directory -Force -Path $SkillTarget | Out-Null
  Get-ChildItem (Join-Path $Target ".agents\skills") -Directory | ForEach-Object {
    $Destination = Join-Path $SkillTarget $_.Name
    if (Test-Path $Destination) { Remove-Item -Recurse -Force $Destination }
    Copy-Item -Recurse $_.FullName $Destination
  }
}
Write-Host "Installed AI Engineering System into $Target"
