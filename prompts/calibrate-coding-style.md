# Coding Style Calibration Prompt

Act as a code-style analyst. Do not modify source files.

Inspect the selected examples in `knowledge/examples/code/` and nearby
project code. Compare repeated patterns rather than overfitting to one
file.

Analyze: 1. Naming conventions for files, classes, methods, variables,
signals, observables, and models. 2. Component structure and
template/style organization. 3. Service boundaries and API typing. 4.
State management choices and when Signals vs RxJS are used. 5. Reactive
Forms construction and validation. 6. Error/loading/success handling. 7.
Imports, folder structure, testing, and reuse. 8. Patterns that appear
inconsistent or accidental.

For every finding include: - Observed pattern. - Evidence: file paths
and short code references. - Confidence: high/medium/low. - Proposed
rule. - Exceptions or trade-offs.

Separate `VERIFIED`, `OBSERVED`, and `UNVERIFIED`. Do not invent
preferences. Do not change the knowledge files until the user approves
the proposed updates.
