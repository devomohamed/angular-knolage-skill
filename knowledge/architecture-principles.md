# Architecture Principles

Status: baseline principles; adapt to the actual system.

-   Prefer high cohesion and low coupling.
-   Keep domain/business rules independent from presentation where
    practical.
-   Keep transport/API concerns at clear boundaries.
-   Use feature-oriented organization when it improves discoverability
    and ownership.
-   Make dependencies point toward stable abstractions where justified.
-   Prefer composition over inheritance unless inheritance models a real
    substitutable relationship.
-   Avoid generic frameworks and abstractions without repeated use
    cases.
-   Make state ownership explicit.
-   Define error, loading, retry, and empty-state behavior.
-   Document important trade-offs and rejected alternatives.
-   Do not impose Clean Architecture layers mechanically on a small
    feature.
