---
description: Convert feature requests, bug reports, and vague ideas into
  clear requirements, user flows, edge cases, and acceptance criteria
  before implementation.
name: requirements-analysis
---

# Requirements Analysis

## Trigger

Use when the request is ambiguous, spans multiple states/screens,
changes business behavior, or lacks acceptance criteria. For tiny
explicit changes, perform a lightweight analysis.

## Workflow

1.  Restate the user's desired outcome in plain language.
2.  Inspect relevant screens, routes, components, models, services,
    tests, and API usage.
3.  Separate facts found in the repository from assumptions.
4.  Identify actors, permissions, preconditions, happy path, alternate
    paths, and failure paths.
5.  Identify data inputs/outputs, validation, persistence, loading,
    empty, error, and success states.
6.  Identify localization, RTL/LTR, accessibility, responsiveness, and
    compatibility requirements.
7.  List acceptance criteria that can be verified.
8.  Ask only the highest-impact unresolved question. Do not ask
    questions whose answers can be found in the codebase.
9.  For implementation-sized tasks, provide a concise scope and plan.

## Output

-   Goal
-   Existing behavior/evidence
-   User flow
-   Business rules
-   Data/API contract (known vs unknown)
-   Edge cases
-   Acceptance criteria
-   Open question(s), only if blocking
-   Out of scope

## Guardrails

-   Never invent endpoint names, payload fields, permission rules,
    calculations, or legal/compliance requirements.
-   Do not convert implementation guesses into requirements.
-   Avoid overengineering tiny requests.
-   Do not edit code during analysis unless the user explicitly asks for
    analysis plus implementation.
