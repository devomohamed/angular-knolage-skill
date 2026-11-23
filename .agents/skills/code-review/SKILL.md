---
description: Review implemented changes for correctness, regressions,
  maintainability, security, accessibility, responsive behavior,
  localization, and test coverage.
name: code-review
---

# Code Review

## Review order

1.  Understand the requirement and acceptance criteria.
2.  Inspect the diff and surrounding code.
3.  Check correctness and edge cases.
4.  Check architecture, boundaries, duplication, and maintainability.
5.  Check typing, error handling, async lifecycle, and state ownership.
6.  Check security/privacy and unsafe data handling.
7.  Check accessibility, localization, RTL/LTR, responsiveness, and
    theme behavior where relevant.
8.  Check tests and run available validations.

## Findings format

For each finding include: - Severity: Critical / High / Medium / Low -
File and line - What is wrong - Why it matters / reproducible scenario -
Suggested fix

Prioritize actionable defects. Do not report subjective style
preferences as bugs unless they violate an approved convention.

## Final report

-   Blocking findings
-   Non-blocking suggestions
-   Tests/checks run and exact outcomes
-   Areas not verified
-   Acceptance criteria status

Never claim a test, build, or visual check passed unless it was actually
executed.
