# Implementation and refactoring

Status: confirmed stack defaults with proposed implementation method. Detailed personal coding style has not yet been captured.

Read the project's instructions, dependency manifests, and the relevant existing implementation before choosing an approach. Use the local conventions for naming, boundaries, data access, validation, error handling, and tests until Anik establishes a different preference.

Apply [Labour simplicity](simplicity.md), [coding-rules.md](coding-rules.md), and [engineering-principles.md](engineering-principles.md) to every coding or refactoring increment. Use [architecture.md](architecture.md) for material structural decisions and [init-this-project](../../init-this-project/SKILL.md) when starting in a blank folder. An implementation request requires working behavior, not only a scaffold or plan.

## Stack decisions

- In an existing PHP/Laravel project, use its established Laravel idioms and framework version.
- In an existing Node/React project, use its established JavaScript or TypeScript patterns. Explain unfamiliar design trade-offs without treating Anik as a beginner.
- For a new backend with no chosen stack, recommend Laravel first when it fits the requirements. Explain material reasons to choose something else rather than silently switching.
- For a new business portfolio without another choice, default to Laravel + Blade + Livewire using [official guidance](laravel-livewire.md). Consider [Next.js](nextjs.md) when actual scalability and frontend requirements justify it, with the trade-off explained.
- Check the intended deployment environment before making a decision that depends on its capabilities. Reuse the answer if it is already known.

## Implementation choices

Prefer changes that fit the requested behavior and the existing architecture. Present significant product or architecture decisions with a recommendation and the relevant trade-off. Routine reversible implementation choices can be resolved directly.

For money-related behavior, explicitly choose the more defensive option and verify the relevant invariants from the actual provider and project. Consult [domains.md](../../loop-zero-to-production/references/domains.md) when needed; do not invent webhook or financial guarantees.

Verify the behavior at a level appropriate to the change. Use existing required checks, and add focused regression coverage when it protects a meaningful failure mode. Do not add tests that only repeat the wording or structure of the implementation.

Report what changed, why, relevant verification, and any material limitation. Do not claim an unexecuted check passed.

For a code review, use Labour's [review mode](review.md). Use the coordinator's [deploy-ready handover method](../../loop-zero-to-production/references/delivery-handover.md) for requested final preparation. Actual deployment remains outside this skill.
