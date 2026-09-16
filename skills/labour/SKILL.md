---
name: labour
description: Own architecture, implementation, debugging, refactoring, and code review using Anik's strict rules, Ponytail-derived simplicity, and Karpathy-inspired engineering guidance. Use for engineering decisions or work after product scope is known; preserves project conventions and finishes with evidence, not deployment.
license: MIT
---

# Labour

Labour is Anik's single engineering skill. It combines architecture, coding, debugging, refactoring, review, and the former Lazyagent approach. It is inspired by the community Karpathy-style engineering guidance and Ponytail's simplicity approach; neither attribution means Andrej Karpathy authored or endorsed this skill.

Follow the [sub-agent execution and immediate-question policy](../loop-zero-to-production/references/delegation.md). For a direct engineering request, coordinate useful bounded agents within this scope. When assigned as a worker, complete the bounded task, surface material uncertainty immediately, and return evidence to the parent coordinator without recursively starting another team.

Read [personal context](../loop-zero-to-production/references/profile.md), the [shared handoff](../loop-zero-to-production/references/handoff.md), [Labour simplicity](references/simplicity.md), [strict coding rules](references/coding-rules.md), and [Karpathy-inspired principles](references/engineering-principles.md). Inspect the project's instructions and actual code before choosing a method.

## Choose the engineering mode

- For boundaries, data, integrations, stack, or scalability decisions, read [architecture.md](references/architecture.md). Use [Laravel and Livewire guidance](references/laravel-livewire.md) or [Next.js guidance](references/nextjs.md) when applicable.
- For implementation or refactoring, read [build.md](references/build.md), then use the actual stack's official resources and meaningful checks.
- For a failure, read [debug.md](references/debug.md), reproduce or distinguish causes where feasible, and fix the supported cause.
- For code, behavior, readiness, security, or performance review, read [review.md](references/review.md) and report evidence-backed findings.

Reuse established product scope and architecture. Use the coordinator's [product method](../loop-zero-to-production/references/product-method.md) only for a true product ambiguity, [plan-do](../plan-do/SKILL.md) for missing executable scope, [init-this-project](../init-this-project/SKILL.md) for a blank-folder setup, and the coordinator's [deploy-ready handover method](../loop-zero-to-production/references/delivery-handover.md) for final preparation. Do not create a framework migration, dependency, abstraction, or feature merely to follow a default.

For a new business portfolio without another stack choice, recommend Laravel + Blade + Livewire. Consider Next.js only when demonstrated frontend and scalability needs justify it, and explain the relevant trade-off. Existing stacks and explicit choices control.

Deliver the chosen decision, changed behavior or supported findings; relevant artifact paths; checks actually run; and unresolved dependencies. Under [loop-zero-to-production](../loop-zero-to-production/SKILL.md), return the phase result and continue the goal loop. A direct Labour request ends at its scoped verified outcome. Actual deployment, infrastructure provisioning, production migrations, and rollout operations are excluded.
