# Coding Preferences

Status: initial profile; calibrate against approved code samples.

## Current hypotheses

-   Prefer readable, maintainable Angular code over clever abstractions.
-   Prefer standalone components when supported by the repository
    version.
-   Prefer typed API models and typed form controls.
-   Keep API calls in services and UI state close to the feature unless
    shared state is justified.
-   Use Signals for local state when suitable; use RxJS for
    stream-oriented workflows.
-   Use `takeUntilDestroyed` for component-scoped subscriptions when
    applicable and supported.
-   Keep components focused; extract a child component when it has a
    clear responsibility or reuse value.
-   Reuse project components and utilities before creating new ones.

## Must be learned from examples

-   Component file/folder naming and suffixes.
-   Smart/container vs presentational component boundaries.
-   Service naming and API method naming.
-   Signal naming and state shape.
-   Error/loading/toast conventions.
-   Form construction and validation style.
-   Barrel export policy.
-   Import ordering and path aliases.
-   Test naming, test framework, and mocking style.

## Do not assume

-   A single folder architecture for every repository.
-   That every component needs its own service.
-   That every observable should be converted to a signal.
-   That every reusable-looking block deserves a shared component.
-   That a new state-management library is needed.
