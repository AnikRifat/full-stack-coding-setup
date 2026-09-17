# Flow analysis method

`flow-design` is the single-pass journey read. Shared depth lives in
[loop-interface-audit](../../loop-interface-audit/SKILL.md) — read rather than restate:

- [principles.md](../../loop-interface-audit/core/principles.md) — defaults over questions,
  undo over confirmation, feedback timing, the C.L.E.A.R. screen test.
- [failure-taxonomy.md](../../loop-interface-audit/core/failure-taxonomy.md) — report with
  these codes so findings are comparable across skills.
- [heuristics-engine.md](../../loop-interface-audit/core/heuristics-engine.md) — the
  observe → evidence → diagnose → severity → fix → sequence → verify sequence, and the
  fix order: delete → default → defer → reframe → add.

## What this skill owns

`F-JOB`, `F-IA`, `F-DECISION`, `F-LOAD`, and the behavioral half of `F-STATE` and `F-TRUST`.
Visual hierarchy, spacing, token, and craft findings go to
[ui-audit](../../ui-audit/SKILL.md).

## Walk the task, not the page

A flow is only analyzed once it has been followed end to end in every state that actually
occurs: happy, empty, loading, slow, partial, validation error, server error, permission
denied, concurrent edit, duplicate submit, long values, and keyboard-only. A journey map
drawn from the happy path alone will miss where users actually leave.

## Roles change the flow

The same screen is a different journey for a customer, an operator, and an admin. Where the
product has staff who work in it daily, the operator journey is a requirement, not an
afterthought. Ask which role the analysis is for when it is not stated and the answer
changes the recommendation.

## Behavioral claims

Persuasion and behavioral-psychology vocabulary is available but earns nothing by itself.
A recommendation stands on the observed flow, the role, and the cost to the user — not on a
named effect. Where a named principle is genuinely load-bearing, cite a primary source and
state the condition under which it holds.

Check [behavioral-ux-sources](../../../references/behavioral-ux-sources.md) before leaning on
one. Several popular UX principles are misread versions of narrower findings, several
replicate poorly or not at all, and the persuasion subset carries live regulatory exposure.
Biases about the builder — confirmation, curse of knowledge, planning fallacy, false
consensus — apply to how this analysis is run, not to the interface.

Never present a projected conversion number as a finding. Frame it as a hypothesis with the
measurement that would settle it.

## Output

A journey recommendation with observable success criteria, sequenced Now / Next / Later,
plus an explicit "not changing, because" list. Confirmed requirements stay distinguished
from recommendations. An unresolved business rule that changes the flow is a question, not
an assumption.
