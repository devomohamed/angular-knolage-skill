---
name: angular-engineering
description: 'Implement, modify, or debug Angular applications. Use for Angular components, services, routing, state, RxJS, Signals, forms, PrimeNG, localization, and tests; follow the repository''s installed versions and patterns.'
---

# Angular Engineering

## Workflow

1. Inspect `package.json` and the lockfile for Angular, TypeScript, RxJS, UI libraries, and test/build tools. Check the Angular workspace configuration and the relevant feature files.
2. Trace the existing behavior through related components, routes, services, models, tests, and styles. Check providers, interceptors, translation, theme, and direction systems when relevant.
3. Identify the smallest change boundary. Follow existing project patterns; separate confirmed requirements from unknown behavior and ask only when an unknown materially affects the implementation.
4. Implement the change using APIs supported by the installed versions. Keep data access, business rules, UI, and state in the layers already used by the project.
5. Add or update focused tests, then run the narrowest relevant test, lint, type-check, or build commands available. Report exactly what ran and any checks that remain.

## Angular and TypeScript

- Follow the installed Angular version and project setup. Do not assume standalone components, a particular template syntax, or newer APIs are available; do not migrate modules or upgrade dependencies unless requested.
- Use the project's established dependency-injection, component, routing, and provider patterns.
- Use explicit types at API and form boundaries. Avoid `any`, unsafe casts, and duplicate types; do not treat a TypeScript interface as runtime validation of external data.
- Keep components focused on rendering and interaction. Put API calls in the established service or data-access layer, and keep business rules out of templates.
- Use Signals for local synchronous state when they make ownership and updates clearer. Use RxJS for streams, async composition, cancellation, and event-driven workflows. Do not convert Observables or introduce a state library without a concrete reason.
- Prefer template async patterns or existing signal interop over manual subscriptions. Where a component-scoped subscription is necessary, use the project's cleanup pattern; use `takeUntilDestroyed` only when supported by the installed Angular version.
- Reuse existing shared utilities and components. Create abstractions only when they clarify a real responsibility or repeated use case.

## Data and failure states

- Preserve the existing API contract, interceptor behavior, and error-reporting conventions. Do not invent endpoints, response fields, retries, or success behavior.
- Represent loading, empty, success, and error states when relevant to the flow. Surface failures through the established UI or logging mechanism; do not swallow errors or show success after a failure.
- Avoid duplicate requests and subscriptions. Use the existing cancellation and concurrency patterns where stale or overlapping requests are possible.

## Forms

- Follow the application's form approach. Use typed Reactive Forms when supported and consistent with the project, particularly for complex, dynamic, or cross-field validation.
- Keep validation rules explicit and close to form logic. Do not make a field required or add business rules without evidence from requirements or existing behavior.
- Preserve entered values on recoverable errors where appropriate, and associate validation feedback with its controls accessibly.

## UI, PrimeNG, and styling

- Check the installed PrimeNG and styling versions, theme configuration, shared wrappers, design tokens, and nearby components before using APIs or adding styles.
- Keep Tailwind, SCSS, and global styles within the responsibilities established by the project. Avoid broad overrides that can affect unrelated screens.
- Use semantic, keyboard-operable controls with visible focus and appropriate labels. Preserve the project's responsive behavior and dark/light theme support where relevant.

## Localization and direction

- Use the project's translation service and key conventions. Do not hardcode user-facing strings in a localized feature.
- Preserve the established RTL/LTR direction strategy. Prefer CSS logical properties for direction-sensitive spacing and positioning, and check layouts in the directions the feature supports.

## Validation

- Add or update tests for changed behavior and important edge cases using the repository's existing test framework and conventions.
- Run the smallest relevant test and static-check commands discovered in the project; run a build when the change affects compilation or configuration.
- Do not claim checks passed unless they ran successfully. State when a check is unavailable or was not run.
