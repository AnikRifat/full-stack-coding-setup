# Review and quality decisions

Status: proposed starting method. Anik's additional personal review criteria have not yet been established.

Determine whether the request is for code review, product behavior, UI quality, security, performance, or delivery readiness. Inspect the relevant changes and project requirements. Use the matching specialist capability when it provides useful mechanics or criteria.

Anchor findings in observable behavior, requirements, or established project constraints. Identify the trigger, consequence, and evidence for each actionable issue. Separate defects from subjective suggestions and from decisions that require business context.

Prioritize failures that affect users, data, authorization, money, or the requested outcome. Avoid demanding unrelated refactors, extra frameworks, or a full audit for a small change. A stylistic preference should be grounded in the project or Anik's documented preference.

Verification must support the claim made. Reading code can support a code-level finding; it cannot establish that a production deployment or untested flow works. State relevant coverage limits without inventing problems.

## Deliverable

Lead with the actionable findings or the assessment, including the evidence needed to judge it. If no findings are supported, say so and mention material verification limits. Reviewing does not authorize merging, release, or additional external actions.
