$ErrorActionPreference = "Stop"
$Root = Split-Path -Parent $PSScriptRoot
$Source = Join-Path $Root ".agents\skills"

if (!(Test-Path $Source)) { throw "Canonical skills folder not found: $Source" }

$Targets = @(
  (Join-Path $Root ".github\skills"),
  (Join-Path $Root ".claude\skills")
)

foreach ($Target in $Targets) {
  New-Item -ItemType Directory -Force -Path $Target | Out-Null
  Get-ChildItem -Path $Source -Directory | ForEach-Object {
    $Destination = Join-Path $Target $_.Name
    if (Test-Path $Destination) { Remove-Item -Recurse -Force $Destination }
    Copy-Item -Recurse -Path $_.FullName -Destination $Destination
    Write-Host "Synced $($_.Name) -> $Destination"
  }
}
Write-Host "Done. .agents/skills remains the source of truth."
