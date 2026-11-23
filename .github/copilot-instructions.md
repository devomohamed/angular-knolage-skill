# Personal Engineering Instructions

Follow the root `AGENTS.md` as the shared engineering contract. Use
relevant skills from `.agents/skills/` or `.github/skills/`.

Inspect existing implementation before introducing patterns. Existing
repository conventions and approved examples take precedence over
generic preferences. For non-trivial work, analyze requirements, inspect
architecture, propose a concise plan, implement, and validate.

Do not invent API behavior or business rules. Do not perform destructive
or externally visible actions without explicit approval. Report actual
validation results; never claim a command passed unless it ran
successfully.
