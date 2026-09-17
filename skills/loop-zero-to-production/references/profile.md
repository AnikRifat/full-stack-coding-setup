# Personal context

## Confirmed defaults

Source: Anik's global `AGENTS.md`, supplied in the conversation and read at `/Users/anikrfiat/AGENTS.md` on 2026-09-17.

| Preference | Context and exceptions |
| --- | --- |
| Treat Anik as developer, architect, and product manager | Recommend an approach with trade-offs; use an option menu when he asks to explore |
| Use English for code, comments, commits, and documents | A request for another language overrides the default; Bengali is welcome during discovery |
| Default to PHP/Laravel conventions | For backend choices without an established stack; follow Node/React conventions in a clearly Node/React project |
| Adjust explanation depth to experience | Laravel is his deepest area; he describes Node/React experience as partial; more precise calibration is not yet available |
| Ask about the deployment target | When the target changes the decision and has not already been established; options include containers, a bare VPS, and cPanel |
| Choose the more defensive approach around money and flag it | Payments, balances, refunds, and financial integrations; the exact provider and business rules still need project evidence |
| Respect each project's separate context | This is a workspace with multiple independent client and product repositories |

## Not yet established

- Detailed sequence after initial journey, audience, product-type, and domain framing; feature prioritization method.
- What makes an MVP sufficiently useful to release.
- Preferred planning granularity and estimation style.
- Personal coding-style details beyond stack defaults and the requested starting development rules.
- How he weighs speed, maintainability, cost, risk, and design quality in different contexts.
- His preferred architecture boundaries, review criteria, and release workflow.
- Domain-specific experience and rules.

The global instructions reference additional profile, standards, and prompt-optimizer files. They were not found in the stated locations or the searched workspace locations at setup. Their contents must not be inferred.

## Confirmed workflow ownership

Source: Anik's request in the library setup conversation on 2026-09-17.

The coordinator is now named `loop-zero-to-production`, applying Anik's later requested `loop-` prefix to its original name. He wants autonomous workflow ownership through an interactive, goal-driven loop. Ask material questions immediately, reuse answers and authorization, and handle routine choices from evidence while continuing independent work.

His latest instruction requests sub-agent-driven execution across connected micro-skills for faster development. Delegate substantive bounded work with clear ownership, parallelize independent tasks when useful, and keep the coordinator responsible for the goal, questions, integration, and final evidence. Use [delegation.md](delegation.md); this preference does not promise a measured speed gain or override tool availability and dependencies.

The execution mechanics are in [operating-loop.md](operating-loop.md). Autonomy does not establish unknown business requirements or remove actual authorization boundaries.

## Confirmed lifecycle and engineering defaults

Source: Anik's subsequent requests and deployment-scope clarification on 2026-09-17.

- Use connected task skills for architecture, coding, debugging, verification, review, UI, and UX work. Preserve context through [the shared handoff](handoff.md).
- Work from a blank folder to initialize the project, then own requested lifecycle work, including architecture and coding. `init-this-pc` covers a requested global Codex/Claude scratch environment; `init-this-project` covers the application itself.
- A new business portfolio defaults to Laravel + Livewire, interpreted as Laravel with Blade and Livewire. Existing stacks and explicit choices remain controlling.
- Consider Next.js when scalability requirements justify it. Establish the actual workload and explain the relevant trade-off rather than assuming a framework alone guarantees scale.
- Use official framework guidelines, skills, and documentation appropriate to the chosen packages. Laravel's official Boost setup is the documented mechanism for Laravel projects; Next.js uses its applicable official agent guidance.
- Always apply Labour's Ponytail-derived simplicity approach to engineering. Labour is also inspired by the community Karpathy-style engineering guidance; it is not an official skill authored or endorsed by Andrej Karpathy. The request authorizes the local upstream clone and adapted companion skill, not modification of the installed Ponytail plugin.
- Include accurately attributed [Karpathy-inspired principles](../../../rules/engineering-principles.md) and [strict coding rules](../../../rules/coding.md). Their concrete implementation is the library's starting policy, not a claim that previously unknown personal conventions were recovered.
- Finish with a verified project ready to deploy. Actual deployment is explicitly excluded. Apply agreed behavior and relevant checks; detailed acceptance criteria remain project-specific.
- On 2026-09-17, Anik explicitly separated global Codex/Claude scratch setup into `init-this-pc` and application setup into `init-this-project`. The PC skill inspects actual local tools and configuration rather than assuming a Claude setup.

## Evidence for future additions

For a new personal rule, record the user's statement or artifact, date, applicable context, exceptions, and whether it is confirmed or a hypothesis. Keep project-specific conventions in their project unless the user identifies a broader pattern.

## First personalization focus

Source: Anik's answers in the skill-library setup conversation on 2026-09-17.

He selected idea-to-MVP work first: product decisions, scope, planning, and delivery. He described three client examples: adapting a reference to a brand, building a solution from client issues, and following a client-requested degree of reference similarity. The evidence, limits, and applicable product methods are in [product examples](product-examples.md) and the [product method](product-method.md).

He subsequently described his framing method: map the core user journey, determine whether the client/customer audience is technical or nontechnical, and identify the kind of product and business domain. His examples include a solution, personal or business portfolio, corporate website, ERP, ecommerce, and logistics; the list is open-ended. Use this framing in product discovery, with roles and business context established from the actual brief.

This clarification describes how he understands a project. Although submitted in response to a readiness question, it does not state a release or client-acceptance rule. The detailed step order, personal coding conventions, scope approval process, project-specific readiness criteria, and outcomes remain unknown. Later instructions establish deploy-ready scope, stack defaults, connected micro-skills, and a requested development policy. Proposed parts of the guides remain editable recommendations.
