# Stack and domain context

Read this only when a concrete decision depends on a technical stack, industry rule, deployment constraint, money, or data sensitivity. This reference selects what to investigate; it is not a substitute for current documentation or domain expertise.

## Use project evidence first

Look for existing project instructions, manifests, schema, integration contracts, business requirements, and representative code. Reuse established choices. Do not infer a full domain policy from a framework or provider name.

## Classify the product and business separately

Source: Anik's project-framing clarification in the library setup conversation on 2026-09-17. He maps the core user journey, considers technical versus nontechnical customers, and distinguishes many kinds of projects and domains.

Use the actual brief to establish:

| Dimension | Examples and use |
| --- | --- |
| Product type | Solution or operational system, personal portfolio, business showcase, corporate website, ERP, ecommerce, or a hybrid; informs the purpose of the product |
| Business domain | Travel, home services, logistics, or another activity; informs vocabulary, actors, processes, and business constraints |
| Audience and roles | Client or buyer, visitor, customer, staff, administrator, integration user as applicable; establish technical familiarity for relevant roles |
| Core journey | The user's goal, important steps, and successful outcome; informs scope and eventual acceptance criteria |

Do not equate a business domain with a required software category. Do not infer logistics workflows merely because a company operates in logistics, or ERP features because the client mentions business operations. Establish the actual intended solution.

The examples are not an exhaustive IT taxonomy. Products can have multiple purposes and domains, and a new domain can be described without creating a new skill. Ask only about distinctions that would change the current decision.

Apply audience context to the task: explain decisions at the client's level and investigate appropriate user and operator interactions. Do not assume that the client's technical skill represents every user, or reduce needed capabilities just because an audience is nontechnical.

Return the framing to the [product method](product-method.md) for scope decisions or [delivery-plan](../../delivery-plan/SKILL.md) for goal-driven execution planning. Actual release readiness still depends on agreed criteria, not classification alone.

## Questions that change the decision

| Context | Establish when relevant |
| --- | --- |
| Backend or frontend | Existing stack and version, conventions, runtime constraints |
| Database or data migration | Data shape, volume, consistency needs, compatibility, authorized data actions |
| APIs and messaging | Authentication, delivery behavior, error contract, limits, ownership |
| Payments and commerce | Provider, money representation, event authenticity, duplicate handling, refunds and reconciliation requirements |
| Infrastructure | Actual hosting target, available services, release access, recovery capability |
| Mobile | Platforms, native requirements, distribution route, existing app conventions |
| UX and accessibility | Users, critical journeys, devices, applicable requirements, established design system |
| AI and analytics | Intended decision, data permissions, evaluation evidence, cost and failure tolerance |
| Security or regulated work | Sensitive data, trust boundaries, applicable obligations, required expertise |
| Client or industry-specific work | Business vocabulary, acceptance criteria, contractual constraints, responsible decision maker |

Investigate only the rows relevant to the current outcome. For current provider behavior, regulations, or an uncertain niche fact, verify using authoritative sources through the permitted browsing tools.

For payments, Anik prefers the stricter, more defensive option and expects that choice to be made explicit. The required guarantees must still be established from the actual integration.

Add a focused maintained reference when repeated projects demonstrate a reusable rule. Use [personalize.md](personalize.md) to distinguish Anik's preference from the project's domain requirement.
