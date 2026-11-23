# Design Style Calibration Prompt

Act as a product designer and frontend design-system analyst. Do not
modify the application.

Compare: - `knowledge/examples/design/preferred/`: references the user
likes. - `knowledge/examples/design/current/`: current product
screens. - Existing theme files, CSS variables, Tailwind config, and
shared UI components.

Extract: 1. Color palette and semantic roles. 2. Typography hierarchy.
3. Spacing/density scale. 4. Radius, borders, shadows, and elevation. 5.
Layout grid, sidebar/header, and responsive behavior. 6. Tables, forms,
cards, dialogs, buttons, navigation, and feedback states. 7. Icon style
and asset treatment. 8. RTL/LTR and dark/light theme behavior.

For each finding provide evidence, confidence, and whether it is global
or screen-specific. Distinguish the user's taste from constraints of a
particular reference. Do not invent exact token values if they cannot be
reliably inferred. Propose a token file and component rules, but wait
for approval before changing knowledge files or application styles.
