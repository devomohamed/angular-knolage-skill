---
description: Design and implement frontend screens and components from
  user requirements, screenshots, existing product UI, and design tokens
  while preserving the product's visual language.
name: frontend-design
---

# Frontend Design

## Evidence hierarchy

1.  Explicit instructions for this task.
2.  User-selected screenshots/references.
3.  Approved screens in the same product.
4.  Existing design tokens and shared components.
5.  `knowledge/design-profile.md`.
6.  Generic design conventions.

## Before implementation

1.  Inspect existing screens, shared components, theme files, tokens,
    fonts, assets, and responsive breakpoints.
2.  Review all supplied screenshots. Identify viewport, hierarchy,
    layout, spacing, typography, colors, controls, and states.
3.  Separate what must match from what can adapt to the existing
    application.
4.  Identify missing states: loading, empty, error, success, disabled,
    validation, hover, focus.
5.  If references conflict or a crucial visual choice is unclear, ask
    one focused question.

## Design execution

-   Reuse the existing design system; do not create a competing one.
-   Match hierarchy, density, alignment, spacing, and component
    proportions---not merely colors.
-   Use real project assets and icons. Do not fabricate logos or brand
    assets.
-   Prefer semantic HTML and accessible controls.
-   Support keyboard navigation, visible focus, labels, and appropriate
    contrast.
-   Design responsive behavior intentionally, not by shrinking desktop
    content.
-   Support RTL/LTR and dark/light themes when required.
-   Use CSS logical properties for direction-sensitive layout.
-   Keep visual styling consistent across related screens.

## Screenshot matching

-   State the target viewport if known.
-   Compare the rendered result against the reference at the same
    viewport.
-   Check alignment, dimensions, typography, whitespace, colors,
    borders, shadows, and overflow.
-   Do not claim pixel-perfect accuracy without an actual visual
    comparison.
-   If screenshot capture tools are unavailable, state that visual
    verification remains pending.

## Output

Briefly report reference interpretation, reused components/tokens, files
changed, responsive/direction/theme checks, and any visual differences
that remain.
