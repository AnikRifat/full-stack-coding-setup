# Visual audit method

`ui-audit` is the single-pass visual read. The autonomous cycle lives in
[loop-interface-audit](../../loop-interface-audit/SKILL.md), and its core files are the
shared source of truth — do not restate them here, read them:

- [accessibility.md](../../loop-interface-audit/core/accessibility.md) — WCAG 2.2 AA floor,
  contrast ratios, focus, target sizes. Mandatory for any audit that touches code.
- [design-system.md](../../loop-interface-audit/core/design-system.md) — the component state
  matrix. Most visual findings are a missing state, not a wrong color.
- [anti-ai-look.md](../../loop-interface-audit/core/anti-ai-look.md) — generated-page tells.
- [failure-taxonomy.md](../../loop-interface-audit/core/failure-taxonomy.md) — use the codes
  when reporting so a finding here is comparable to one from the loop.

## What this skill owns

`F-HIER`, `F-CRAFT`, `F-GENERIC`, and the presentation half of `F-STATE`. Everything else —
`F-JOB`, `F-IA`, `F-DECISION`, `F-LOAD` — is a journey finding. Route it to
[flow-design](../../flow-design/SKILL.md) and say so rather than fixing it quietly.

## Severity

Impact × frequency × reversibility, same as the loop. A contrast failure on a primary action
is High because it is frequent and blocks a task; an off-grid margin on a settings page is
Low. Do not report a flat list of equal-weight observations — an audit that does not rank is
a list the reader must re-audit.

## Evidence

Each finding names the screen or component, the state it was observed in, and what the user
loses. A finding with no named surface is a preference. A finding with no user cost is a
preference stated more confidently.

Where a claim needs a rendered check that was not run — contrast measured, 360px behavior,
focus order — say it was not run. Do not infer a computed value from source.

## Scope

Report the correction, do not perform it. Implementation is
[code-implement](../../code-implement/SKILL.md). Trend advice with no basis in the project's
own conventions is out of scope even when it would look better.
