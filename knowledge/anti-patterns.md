# Anti-patterns to Avoid

-   Editing before inspecting the surrounding implementation.
-   Rebuilding existing shared components instead of reusing them.
-   Huge components with unrelated responsibilities.
-   Business logic embedded deeply in templates.
-   Untyped API responses and unnecessary `any`.
-   Duplicate API calls or duplicated validation rules.
-   Nested subscriptions where composition is clearer.
-   Converting every Observable to a Signal without a reason.
-   Creating abstractions used only once without a clear benefit.
-   Hardcoded user-facing strings in localized applications.
-   Hardcoded colors/spacing that bypass existing tokens.
-   CSS that breaks RTL, mobile, or dark mode.
-   Swallowing errors or showing success when an operation failed.
-   Claiming tests/builds passed without running them.
-   Broad refactors bundled into a focused feature.
