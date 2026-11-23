# Personal Knowledge Base

This folder is the source of truth for preferences that should shape
future work.

## Evidence levels

-   `VERIFIED`: confirmed by the user or repeated in approved examples.
-   `OBSERVED`: seen in existing code/screens; confirm before treating
    as universal.
-   `UNVERIFIED`: initial hypothesis; do not enforce rigidly.

## How to calibrate

1.  Add 3--5 representative components, services, forms, and tests to
    `examples/code/`.
2.  Add screenshots of screens you like to `examples/design/preferred/`.
3.  Add screenshots of current project screens to
    `examples/design/current/`.
4.  Run `prompts/calibrate-coding-style.md` and
    `prompts/calibrate-design-style.md`.
5.  Review the generated findings and approve changes before marking
    them VERIFIED.

Never put secrets, customer personal data, production records, or
private credentials in this folder.
