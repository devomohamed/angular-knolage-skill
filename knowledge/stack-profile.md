# Stack Profile

## Known baseline

  -----------------------------------------------------------------------
  Area                    Baseline                Status
  ----------------------- ----------------------- -----------------------
  Frontend framework      Angular 22 /            OBSERVED; inspect each
                          standalone-first        repo

  Language                TypeScript              OBSERVED

  Local state             Angular Signals where   OBSERVED
                          appropriate             

  Async streams           RxJS where              OBSERVED
                          streams/operators are   
                          useful                  

  UI library              PrimeNG                 OBSERVED

  Styling                 Tailwind CSS + SCSS     OBSERVED

  Localization            ngx-translate           OBSERVED

  Forms                   Reactive Forms          OBSERVED

  Layout                  Responsive, RTL/LTR     OBSERVED

  Themes                  Dark/light              OBSERVED
  -----------------------------------------------------------------------

## Rules

-   Detect actual versions from package.json and lockfiles. Never assume
    every project uses the same Angular version.
-   Do not upgrade dependencies unless requested.
-   Use Signals for local synchronous UI state when it fits. Use RxJS
    for async streams, cancellation, composition, and event streams
    where appropriate.
-   Do not force Signals or RxJS into every problem.
-   Follow the installed PrimeNG version and existing theme API.
-   Follow the project's current translation setup; do not mix
    incompatible ngx-translate configuration styles.
-   Use Reactive Forms when the project uses them, especially for
    complex validation and dynamic forms.
-   Check whether Tailwind and SCSS are both used and respect their
    established responsibilities.
-   Ensure RTL/LTR behavior through logical CSS properties and the
    project's direction strategy.
