# Failure taxonomy

| Code | Problem | Test and fix direction |
| --- | --- | --- |
| F-JOB | One surface serves incompatible jobs or roles | Split by job when roles ignore most of the screen |
| F-DECISION | Data appears but no question or action is clear | Give each block a question, comparison, and action; delete the rest |
| F-HIER | No focal point or visual priority | Apply a three-tier weight system and one primary action |
| F-IA | Information architecture mismatches user mental model | Re-map navigation to the user's day and vocabulary |
| F-STATE | Domain state, owner, blocker, or next action is hidden | Express state with status, timeline, exception, and next action |
| F-TRUST | The UI does not prove mutations or freshness | Show acknowledgement, terminal state, who/when, undo, or audit trail |
| F-LOAD | Avoidable fields, decisions, jargon, or codes | Delete, default, defer, or reframe |
| F-CRAFT | Working surface lacks intentional craft | Apply wow-factor, tokens, hierarchy, and state polish |
| F-GENERIC | Interface could be any product or exposes generated-page tells | Apply the anti-generic pass |
| F-CONV-* | Storefront clarity, friction, proof, risk, or CTA fails | Audit the funnel, proof, objections, and commitment level |

`F-JOB` plus `F-IA` is a redesign candidate. `F-HIER`, `F-CRAFT`, and `F-GENERIC` alone call for refinement, never a rebuild.

```text
F-JOB    [Critical]  Order dashboard serves queue + history + analytics + fulfillment
F-HIER   [High]      11 columns, equal weight, no focal column
F-STATE  [High]      6 statuses as plain text; no timeline, no next action
F-CRAFT  [Medium]    5 grays, 3 radii, spacing off-grid in 4 places
```
