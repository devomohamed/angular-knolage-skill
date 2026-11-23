---
description: Analyze system boundaries, modules, data flow, state
  ownership, integration options, and technical trade-offs before
  significant implementation or refactoring.
name: architecture-design
---

# Architecture Design

## Workflow

1.  Inspect the repository structure, dependency graph, framework
    versions, existing conventions, and deployment/runtime constraints.
2.  Identify the change boundary and affected modules.
3.  Map data flow: UI -\> state -\> domain/business logic -\>
    API/storage -\> UI.
4.  Identify ownership of state, validation, side effects, and errors.
5.  Consider the simplest viable design first; compare alternatives only
    when meaningful.
6.  Evaluate cohesion, coupling, testability, performance, security,
    migration cost, and team familiarity.
7.  Record important decisions using `templates/decision-record.md`.
8.  Present a migration/implementation sequence and risks.

## Angular guidance

-   Use feature boundaries that match business capabilities.
-   Keep components focused on presentation and interaction.
-   Keep API communication in services or the repository's established
    data-access layer.
-   Use Signals for local synchronous state when appropriate.
-   Use RxJS for streams, cancellation, composition, and async workflows
    when appropriate.
-   Avoid introducing NgRx or another state library unless requirements
    and existing architecture justify it.
-   Use shared libraries only for genuinely shared concepts, not
    speculative reuse.

## Output

-   Current architecture
-   Proposed boundary and responsibilities
-   Data/state flow
-   Options and trade-offs
-   Recommended approach
-   Risks and migration steps
-   Test strategy

## Guardrails

Do not impose Clean Architecture mechanically. Do not refactor unrelated
modules. Do not add dependencies without explaining why.
