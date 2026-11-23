---
description: Implement and modify Angular applications using the
  repository's actual Angular version, conventions, typed APIs, Signals,
  RxJS, forms, and component patterns.
name: angular-engineering
---

# Angular Engineering

## First inspect

-   package.json and lockfile for Angular, TypeScript, RxJS, PrimeNG,
    and tooling versions.
-   Existing standalone/module setup, routing, providers, interceptors,
    and build configuration.
-   Similar components, services, models, tests, and styles.
-   Existing translation and theme systems.

## Implementation principles

-   Follow the installed Angular version; never assume the starter's
    Angular version matches the repo.
-   Follow standalone-first only when compatible with the project.
-   Use strict TypeScript and typed models at API/form boundaries.
-   Prefer `inject()` or constructor injection according to established
    project style.
-   Use Signals for local synchronous state where they improve clarity.
-   Use RxJS for asynchronous streams, cancellation, composition, and
    event-driven workflows.
-   Avoid manual subscriptions when template async patterns or signal
    interop are clearer.
-   For component-scoped subscriptions, prefer `takeUntilDestroyed` when
    supported and consistent with the codebase.
-   Keep API calls in services/data-access layers.
-   Handle loading, empty, success, and error states explicitly.
-   Avoid `any`, unsafe casts, duplicated subscriptions, and nested
    subscriptions.

## Reactive Forms

-   Use Reactive Forms for complex forms and when consistent with the
    application.
-   Keep validators explicit and typed.
-   Support dynamic controls and conditional validation without
    scattering rules through templates.
-   Show accessible validation messages and preserve entered values when
    appropriate.
-   Do not assume a field is required unless requirements or existing
    behavior establish it.

## PrimeNG and styling

-   Inspect the installed PrimeNG version and current theme
    configuration before using component APIs.
-   Reuse shared wrappers and project-level styles.
-   Follow the current Tailwind/SCSS division of responsibility.
-   Do not introduce global CSS overrides without checking impact.

## Localization and direction

-   Use the repository's translation service and key conventions.
-   Do not hardcode user-facing text in a localized feature.
-   Check RTL and LTR using logical CSS properties (`margin-inline`,
    `padding-inline`, `inset-inline`, etc.) where appropriate.
-   Avoid assuming English-only labels or layouts.

## Quality

-   Add or update tests for behavior and edge cases.
-   Run relevant format/lint/type-check/test/build commands discovered
    in the repo.
-   Report commands and results accurately.
