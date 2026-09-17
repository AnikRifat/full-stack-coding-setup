# Own architecture decisions

Source: Anik asked this skill to own architecture as well as coding across product and software lifecycles. Specific design choices below are starting recommendations, subject to the project's evidence and requirements.

Read [simplicity](../../../rules/simplicity.md) before architecture or dependency decisions. Use the coordinator's [product method](../../loop-delivery/references/product-method.md), [domains.md](../../loop-delivery/references/domains.md), and [coding rules](../../../rules/coding.md) to connect software structure to the actual journey, actors, business rules, and engineering requirements.

Use [selection](selection.md) to move from the product type and business domain to a
starting shape, and to see what the domain does and does not entitle you to decide.

## Begin with requirements that change the structure

Establish relevant roles and permissions, data ownership, important invariants, integration boundaries, workload or latency needs, and runtime constraints. Reuse known requirements. Ask about uncertainty that would change a consequential decision instead of collecting a complete architecture questionnaire for a small website.

For a new business portfolio, start with a conventional Laravel application: Blade pages and shared layouts, Livewire for needed interactions, and normal framework mechanisms. Add content management, authentication, uploads, or external services when actual requirements justify them. Do not introduce a separate SPA, microservices, repository layer, plugin system, or generic service hierarchy merely because a future need is imaginable.

For larger systems, recommend the simplest structure that can satisfy demonstrated requirements. A conventional monolith is a useful starting candidate, not a rule that overrides genuine isolation, platform, scale, or integration needs. A domain name such as ERP, ecommerce, or logistics does not by itself establish tenancy, payments, or a distributed architecture.

Consider Next.js when concrete scalability and frontend needs support it, using the [Next.js capability](../../../capabilities/frameworks/nextjs.md). Specify the workload or bottleneck and explain what the choice addresses. A Laravel API plus a Next.js frontend is an option when justified, not the automatic answer for every larger project. Scaling data, background work, or integrations still requires appropriate decisions in those layers.

Keep validation and authorization at real trust boundaries. Define schema and consistency requirements from the business rules. Money-related behavior uses Anik's more defensive default; brevity does not remove authenticity checks, duplicate handling, or other required guarantees.

## Where the Laravel application layer goes

Two layouts are in use across Anik's projects and both are defensible, so pick one per project and never mix them: a flat `app/Services/` layer, and `app/Domains/<Domain>/` holding its own models, services, and actions.

Flat services are correct while the services are few and the nouns are shared. They degrade when the directory grows past roughly the point where a reader can no longer tell which feature a file belongs to from its name — one project here reached 62 of them, alongside both a `Helper` and a `Helpers` directory, which is what that degradation looks like.

Domain folders are correct when the business genuinely has separate areas with their own vocabulary and rules, and they pay for themselves by making the boundary visible. They cost a cross-domain call discipline that must actually be enforced; 19 domains with no rule about who may call whom is the flat layer again with longer paths.

In an existing project, match what is there. Propose the migration only when a specific recurring problem justifies it, and then as an incremental move of one area, never a repository-wide restructure.

## Test coverage is an architectural fact, not a later task

Read the ratio of tests to migrations before proposing structure. Across these projects it ranges from 156 test files to 4 in a monorepo with 159 migrations. A structure that assumes tests will catch a regression is wrong in the second case, and the recommendation changes accordingly: fewer moving parts, stricter database constraints, and the invariant pushed into the schema where the application has no test to defend it.

## Make decisions reviewable

Explain the chosen structure, the requirement it serves, and the trade-off that could change it. For substantial decisions, keep a short record in existing project architecture notes or the workflow checkpoint. Do not create a formal decision document for every helper or component.

Use official framework patterns and package-matched guidelines where available. In an existing codebase, understand its boundaries and callers before changing them; avoid a broad rewrite to solve a narrow failure.

Feed the selected architecture into [delivery-plan](../../delivery-plan/SKILL.md) and [code-implement](../../code-implement/SKILL.md), then validate it through implementation evidence. Revise it when actual results expose a limitation, rather than prebuilding every possible extension.
