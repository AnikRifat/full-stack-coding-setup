# Product decisions and MVP

Status: confirmed initial journey, audience, product-type, and domain framing, plus three observed starting patterns from Anik's client work. The bridge into MVP planning remains proposed. His detailed sequence and readiness criteria are not yet confirmed. Read [product-examples.md](product-examples.md) for the source and limits.

## Frame the project in Anik's terms

For idea-to-MVP or substantial product discovery, map the core user journey and establish the audience, kind of product, and business domain before recommending scope. Reuse a known brief for a narrow follow-up instead of repeating discovery.

- **Core journey:** who starts it, what they want, the meaningful steps and decisions, and the successful outcome. Include an operator or staff journey when it is necessary to deliver that outcome.
- **Audience:** whether the relevant client/customer is technical or nontechnical. Distinguish the person commissioning the work from end users and operators; their experience can differ. Use this context to tailor explanations and assess interaction needs without assuming that technical level alone determines the interface.
- **Kind of product:** a solution or operational system, personal portfolio, business showcase, corporate website, ERP, ecommerce, or another type. These are examples, not mandatory exclusive categories.
- **Business domain:** the actual industry or activity, such as travel, home services, or logistics. Keep this distinct from the type of software; a logistics company may need a corporate site, an operational system, or both.

Read the classification section in [domains.md](domains.md) when the distinctions affect discovery. Use a compact working brief: **audience and roles → product type and business domain → core journey → client-specific requirements and open questions**. This brief format is proposed; Anik has confirmed the considerations, not a rigid ordering or template.

Then identify which input path the request uses. Projects can combine the paths below. Do not assume that every product begins with a reference or that every reference should be closely matched.

## Reference-inspired brand adaptation

Observed in Taveco Air: Anik took inspiration from Tripnest while building around the client's brand, marketing or aesthetic direction, packages, other content, and section flows.

For a comparable request, examine the supplied reference and client context. Separate the reference's useful content and interaction structure from the client's branding, offer, packages, copy, and visual direction. Make adaptation decisions explicit instead of treating the reference as a universal specification.

A useful working map is:

| Reference element | Why it is useful here | Client-specific treatment |
| --- | --- | --- |
| Page or section | User or business purpose | Keep, adapt, omit, or add; explain the client reason |
| Flow or action | Intended visitor outcome | Adapt to the client's actual offer and operating process |
| Package or content block | Information the visitor needs | Use the client's real packages and content; mark missing inputs |
| Visual treatment | Desired impression | Follow the client's established brand or requested direction |

Inspect a reference before making claims about it. Anik's short example does not provide Tripnest's actual contents, a URL, or an implementation brief.

## Client-problem-led solution

Observed in Mollah Auto: the client described issues, and Anik thought through and built a solution.

For a comparable request, understand the issues before recommending features. Connect each important issue to the affected person or process, a proposed solution, and an observable improvement. Confirm gaps that change the product decision. Do not force a reference website or design-matching exercise onto this path.

A useful working map is: **client issue → affected workflow → proposed capability → evidence that it works**. Prioritize the issues using available client context; Anik's personal prioritization rule is still unknown.

## Client-requested reference similarity

Observed in a home-service project: the client supplied a reference, asked for approximately 80% similarity, and wanted different colors, accents, and vibe.

For a comparable request, translate the requested similarity into concrete dimensions: layout, sections, features, interactions, content, and visual identity. Establish which aspects the client actually means before a consequential choice. Preserve the specifically agreed similarities and adapt the specifically requested differences.

The 80% figure belongs to that example. It is neither a default for other projects nor an objectively measurable score without agreed criteria. Do not infer permission to reuse assets, content, or code from a similarity request.

## Proposed bridge into MVP planning

The following is a suggested method, not a confirmed account of Anik's step order:

- Combine the initial framing with the relevant reference decisions or client issues into a brief with the offer or business objective, scope, and missing inputs.
- Recommend a first version that satisfies the agreed client outcome. Distinguish needed behavior, content, visual expectations, and possible later work.
- Make boundaries and acceptance criteria observable. Do not define an arbitrary page count, timeline, percentage match, or startup experiment as a universal MVP rule.
- Separate client-stated requirements from developer suggestions and assumptions. Existing commitments may belong in the first version even if a smaller experiment would otherwise be possible.
- State the uncertainty that could change scope and how it can be resolved. Do not invent demand validation, metrics, budget, or client approval.

Anik expects a recommendation with relevant trade-offs. A short decision can be enough for a narrow feature; a larger engagement benefits from a brief that can feed [plan-do](../../plan-do/SKILL.md). Use [domains.md](domains.md) when business or integration constraints change the choice.

Before claiming the version is ready, use the project's actual agreed acceptance criteria. Anik's personal definition of first-version readiness is still being clarified.
