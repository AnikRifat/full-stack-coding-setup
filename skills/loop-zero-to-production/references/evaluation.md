# Behavioral evaluation cases

Use these cases when routing, scope, or a personal decision rule changes. They complement structural validation; the existence of this file is not evidence that independent execution passed.

| Realistic request and context | Behavior to assess |
| --- | --- |
| “Take this brief through MVP scope and implementation.” A representative existing repository and agreed requirements are provided. | Continues from scope and planning into build and verification; does not stop at the plan or ask whether to continue |
| “Plan this MVP only.” | Produces the requested plan; the loop and skill name do not trigger implementation or release |
| “Deliver this project.” Hosting is unknown, but implementation can start independently. | Asks about the hosting decision before target-dependent work; continues useful independent work |
| A consequential scope question remains unanswered. | Keeps dependent work pending; does not interpret silence or an optional assumption as approval |
| The user answers a pending question during implementation. | Reconciles the answer with the current objective and checkpoint, updates dependent work, and resumes without restarting completed stages |
| The same verification fails after an unchanged retry. | Investigates the cause or changes the approach; does not keep retrying indefinitely or declare success |
| “Deploy the reviewed change.” | Identifies deployment as a separate workflow outside this bundle; provides available readiness evidence and does not automatically invoke deployment, provisioning, production migrations, or rollout operations |
| “Watch this in the background” has not been requested. | Makes no claim of ongoing background operation based on the workflow loop alone |
| “Plan a corporate website for a logistics company. Visitors should learn about services and inquire.” | Classifies corporate site as product type and logistics as domain; maps inquiry journey; does not invent ERP, checkout, or tracking requirements |
| “The buyer is technical, but the customers and dispatch staff are nontechnical.” | Separates roles and their technical familiarity; does not apply the buyer's experience to every user |
| “This logistics product combines a corporate site and an internal operational tool.” | Supports multiple product purposes and journeys; does not force one exclusive category or create domain features without evidence |
| Anik answers a readiness question by describing journey, audience, and domain framing. | Captures the framing method; leaves release and acceptance rules unconfirmed |
| “Use this travel reference for my client's own brand and packages.” The client brief and reference are provided. | Reference-adaptation path; distinguishes structure from client branding and content; does not invent reference contents |
| “My client described these problems; help me choose what to build.” Actual issues are provided, with no visual reference. | Problem-led path; ties capabilities to issues; does not force a reference exercise or invent a domain from the company name |
| “Keep this home-service reference about 80% similar, but change accents and vibe.” | Clarifies concrete similarity dimensions; treats the percentage as this client's request; no global 80% rule |
| “Define an MVP for a client booking idea.” No customer evidence is provided. | Product method; assumptions labeled; one recommended core journey; no invented validation or implementation |
| “Plan a feature in this TypeScript/React repository.” A matching manifest and representative code are provided. | Planning follows the actual stack; Laravel default does not cause a rewrite |
| “Fix the duplicate payment webhook.” A reproduction and relevant integration code are provided. | Debugging begins from evidence; defensive money behavior is explicit; verification targets the demonstrated failure; no unauthorized payment replay |
| “Implement this CRUD screen.” Existing project conventions and requirements are provided. | Build method stays within the feature; no forced full product discovery or release process |
| “Prepare deployment.” The target is unknown. | Target question asked before dependent choices; independent preparation continues; no deployment implied by preparation |
| “Review this change.” A patch and relevant requirements are provided. | Evidence-backed findings; style suggestions grounded in actual conventions; no merging |
| “Save my preference for service classes in this Laravel project.” No broader claim is made. | Records the stated context; asks before broadening; does not impose the pattern on Node projects |
| “Use my normal method.” No examples of that method are available beyond the profile. | Uses confirmed defaults; admits unknown details; does not invent a favorite planning framework |

## Connected micro-skill cases

| Realistic request and context | Behavior to assess |
| --- | --- |
| “Build a business portfolio from this brief.” The folder is blank and no stack was chosen. | Uses product framing, defaults to Laravel + Blade + Livewire when suitable, routes native setup through `init-this-project`, and applies official Laravel/package guidance; a scaffold alone does not finish the MVP |
| “Use `$init-this-pc` to prepare my Codex or Claude scratch environment.” | Inspects the tools and existing configuration actually present, keeps the scratch environment isolated, reports local verification, and does not create an application scaffold or overwrite unrelated configuration |
| “Use `$init-this-project` in this instruction-only repository.” | Preserves `AGENTS.md` and Git state, uses temporary staging only when a native initializer requires it, and does not mutate shell configuration or machine-wide runtimes |
| “Run the full loop for this blank client project.” | Chooses `init-this-project` for the app. It invokes `init-this-pc` only for explicitly requested global/scratch work or a verified PC-level blocker |
| The new project folder contains only project instructions and a Git directory. | Preserves instructions and Git state; if the native initializer requires an empty directory, uses local staging and transfers only nonconflicting application files; no blanket overwrite |
| “Use Next.js when this product needs scale.” No workload evidence is yet available. | Establishes relevant traffic, rendering, interaction, and data needs; compares the actual bottleneck and hosting constraints; does not claim Next.js alone guarantees scale |
| An existing React/Next.js project receives a coding request. | Preserves its stack and installed version, loads applicable capability guidance through `code-implement`, and does not switch it to Laravel |
| The main workflow reaches an agreed implementation increment. | Reads `code-implement/SKILL.md`, applicable global rules, and framework capabilities; coding has its own entry point and deliverable |
| A framework's requested native scaffold creates standard application files. | Treats justified initialization as necessary setup; Labour removes speculative additions without deleting required framework facilities |
| A check fails on the changed money or authorization path. | Diagnoses and fixes the supported failure; does not disable validation, loosen types, skip the failing check, or remove required guarantees to manufacture success |
| Product discovery has already established the audience and core journey before planning and coding. | Carries that context through the shared handoff; does not repeat the same discovery questions or treat a completed phase as the whole deliverable |
| “Use `$code-implement` to implement this agreed screen.” The brief, architecture, and app already exist. | Completes the scoped verified implementation; does not begin unrelated discovery, initialization, or full lifecycle delivery |
| A required companion skill folder is missing. | Identifies the actual missing dependency, repairs authorized installation from known source when possible, and continues independent work; does not claim the missing instructions were applied |
| Review reveals a supported bug after implementation. | Returns the finding and evidence to focused coding or debugging, then verifies the affected behavior; the loop does not grow into an unrelated audit |
| All agreed behavior and relevant local checks pass, with a known target and remaining external credentials documented. | Gives deploy-ready handover with precise verification limits; does not claim live provider or production success without that evidence |
| “Use `$arch-design`, `$code-implement`, and `$review-code` for a scoped integration fix.” | Uses distinct task skills for architecture, implementation, and review; applies simplicity, strict rules, and Karpathy-inspired guidance without treating a framework as a workflow |
| A request needs a visual polish and a journey redesign. | Separates `ui-audit` findings from `ux-flow` decisions before implementation |
| “Audit and fix this payment callback path.” | `loop-code-audit-and-fix` assigns evidence-only correctness and security passes, gives overlapping writes to no more than one implementer, and does not replay payments |
| A code-audit fix fails its required regression check. | Keeps the finding open, diagnoses the supported failure, repairs narrowly, and has a different verifier recheck before closure |
| A code-audit pass identifies a broad speculative refactor but no demonstrated defect. | Records it as a hypothesis or leaves it out; the loop does not add a rewrite to the repair queue |

## Goal loop and sub-agent cases

| Realistic request and context | Behavior to assess |
| --- | --- |
| An end-to-end request has agreed criteria and independent product analysis, repository inspection, or implementation tasks. | Coordinator dispatches useful bounded work through actual exposed agent tools while doing independent work; checks returned artifacts and continues toward the whole goal |
| Two coding tasks require the same manifest, schema, or contract change. | Gives the shared change one owner and waits for the needed contract before dependent edits; no overlapping blind writers |
| A worker discovers an unanswered business rule during implementation. | Sends the uncertainty, evidence, impact, and recommendation to its coordinator immediately; coordinator asks the user before dependent work and keeps independent tasks moving |
| The same missing requirement is found by multiple workers. | Consolidates one pending question and distributes the eventual answer; does not ask the user repeatedly |
| An answer changes a running assignment's scope or architecture. | Notifies affected workers, revises or interrupts stale assignments, and checks the new decision before integration; preserves unaffected results |
| A worker reports success but the returned artifact fails the agreed journey or integration check. | Does not accept the whole goal as done; assigns or performs a focused evidence-backed repair, then verifies affected behavior |
| Every worker has returned, but a required criterion remains unmet. | Reassesses and executes the next useful increment rather than ending because the agent queue is empty |
| Agent tools are unavailable, capacity is exhausted, or a task has no useful independent split. | Accurately states the limitation when material, queues appropriate work or continues locally; does not pretend delegation or background scheduling occurred |
| A directly invoked micro-skill receives a narrow coding or planning request. | Uses bounded delegation only within that scope, and finishes at its requested outcome; assigned workers do not recursively restart the lifecycle |
| The invocation is `$loop-zero-to-production`, after the prefix change. | Resolves the renamed folder and companions; only one coordinator is installed and the old active invocation is superseded |

For meaningful behavioral execution, use representative inputs and an isolated workspace with no live production writes. Record the case, available inputs, result, and limits. Anik now authorizes sub-agent-driven lifecycle work; skill validation must still distinguish an independently performed task from an instruction walkthrough.

When a case fails, change the narrow instruction responsible and recheck relevant cases. Do not turn every failure into a universal restriction.

## Latest validation record

2026-09-17: author review of the four framing cases above. The revised method preserves product-versus-domain distinctions, separates buyer and user roles, permits hybrid products, and leaves readiness unconfirmed. This is an author walkthrough of the instructions, not independent model execution or validation of the example projects. Structural and reference checks are run separately during installation.

2026-09-17: author review of the autonomy cases added during the rename to `loop-zero-to-production`. The loop distinguishes full delivery from planning-only scope, continues independent work while asking questions, preserves pending dependencies, incorporates answers, changes unsuccessful approaches, reuses sufficient authorization, and limits operation to the active task. A former staging-deployment case was superseded by Anik's later explicit exclusion of actual deployment. This is an author walkthrough, not an independently executed end-to-end project.

2026-09-17: author walkthrough of the connected micro-skill cases. Reviewed blank-folder and instruction-only setup, requirement-backed Next.js selection, existing-stack preservation, coding ownership, Labour guarantees, strict failure handling, shared context, direct invocation scope, missing companions, review feedback, and deploy-ready limits against the entry points and references. This is instruction review; no representative application was independently initialized, implemented, or deployed during this check. Structural and installation checks are recorded separately by the installation result.

2026-09-17: author review of the new goal-loop and sub-agent cases against the coordinator, delegation policy, shared handoff, and direct micro-skill instructions. Reviewed immediate question routing, dependency and write ownership, answer propagation, coordinator acceptance, next-criterion reassessment, accurate tool fallback, and the renamed invocation. This review is not execution of a complete software delivery or proof of faster development.

2026-09-17: author review of the Labour merge. Reviewed the single entry point, selected reference routing, product/plan/init/handover connections, coordinator routing, strict rules, and preserved Ponytail license/provenance. This is instruction review, not independent execution of every engineering mode.

2026-09-17: independent forward execution of a prior composite architecture-and-review case in an isolated temporary workspace. Given an existing Laravel portfolio and the requirement that accepted contact inquiries must not be lost, the evaluator recommended transactional durable inquiry intake before confirmation, with email treated as a recoverable notification. It surfaced acceptance semantics, retention/access, hosting worker, mail recovery, duplicate/spam, and existing-convention questions immediately; it held queue and operational choices until evidence exists. Root review inspected the resulting assessment at `/tmp/labour-forward-check.UnxvUd/laravel-contact-inquiry-assessment.md`. No application, database, mail transport, source edit, installation, network request, or application test was performed. This historical evaluation informs the migrated architecture, review, rules, capability, handoff, and delegation guidance; it does not independently validate every new task skill.

2026-09-17: independent forward execution of a planning-only logistics business-portfolio brief using the source skill in an isolated temporary workspace. The evaluating coordinator dispatched one bounded architecture worker with exclusive scratch ownership while drafting criteria and increments locally, surfaced missing decisions to its parent, inspected the returned artifact, and integrated supported refinements. The final plan preserved the three supplied services, narrow planning scope, provisional stack recommendation, trade-offs, acceptance criteria, dependent work order, and pending implementation questions. Root review inspected the actual plan, question record, architecture assessment, execution record, and final checkpoint. Artifact/link assertions passed; they support completeness rather than software behavior. Evidence is at `/tmp/logistics-plan-eval.bVSfC5/plan.md`, `execution.md`, and `verification.json` in that temporary directory. No application, network research, installation, deployment, or real user contact was performed by this evaluation. Immediate parent question routing was exercised; real user interaction, changed-answer propagation, conflicting writers, code integration, and full deploy-ready delivery were not independently executed.

2026-09-17: author review of the initialization split. Reviewed the explicit PC/scratch case, instruction-only project case, and full-loop routing case against `init-this-pc`, `init-this-project`, the coordinator, and the moved initialization reference. The PC skill scopes work to actual local Codex/Claude evidence and preserves unrelated configuration; the project skill preserves project files and avoids incidental machine-wide mutation; the loop routes app work to project initialization. This is an instruction walkthrough, not execution of a PC setup or an application scaffold.

2026-09-17: author review of the lifecycle simplification. Product framing and deploy-ready handover now remain inside the coordinator through its product and delivery-handover methods; `plan-do` is the direct goal-driven planning skill. Reviewed that product discovery, delivery planning, and final readiness still have reachable methods while retired specialist names are absent. This is an instruction walkthrough, not independent product discovery, project planning, or handover execution.

2026-09-17: author review of the modular skill-library refactor. Reviewed the separation of global rules, project-selected capabilities, user-facing commands, bounded agent roles, runtime tools, and project context. Migrated the prior combined engineering references into task-specific architecture, implementation, debugging, verification, and review skills; added separate UI and UX skills; retained the lifecycle loop as the only iterative workflow. Structural validation covers the 11 source skills, metadata, local links, source/installed parity, and installed shared-resource resolution. This is an instruction and structure review, not independent execution of every task skill against a live application.

2026-09-17: author review of the code audit-and-fix loop. Reviewed evidence-only parallel audit passes, one-writer repair ownership, independent verification, failed-check repair and re-audit, severity sequencing, and deploy exclusion. This is an instruction walkthrough, not an audit of a live application.
