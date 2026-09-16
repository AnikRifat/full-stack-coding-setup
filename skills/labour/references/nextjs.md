# Next.js for justified scalability and frontend needs

Source: Anik asked to use Next.js when scalability needs justify it on 2026-09-17. Treat Next.js as a first-class candidate, while retaining Laravel + Livewire as the business-portfolio default.

## Make the scaling decision concrete

Establish the relevant workload: public traffic, rendering cost, content freshness, interaction complexity, backend throughput, data volume, or background work. Recommend Next.js when its frontend model addresses the actual requirements, explaining the benefit and runtime trade-off. Do not promise scalability from a framework name alone or invent traffic thresholds.

A Next.js frontend with a Laravel backend is an option when the separation serves demonstrated requirements. A smaller single-stack application can be preferable when it satisfies them. Preserve an existing stack unless the requested work and evidence support a change.

## Initialize and use official agent guidance

Use [official installation guidance](https://nextjs.org/docs/app/getting-started/installation), the current stable native initializer, and its help. Default new Next.js code to TypeScript with strict checking. Keep the chosen package manager and lockfile consistent. Do not choose a canary release merely because a documentation example uses one.

Follow the [official AI coding agents guide](https://nextjs.org/docs/app/guides/ai-agents). When the installed package includes docs at `node_modules/next/dist/docs/`, consult them for matching APIs and preserve its managed agent-guidance block. Otherwise use documentation matching that project's version. Keep personal project instructions outside managed blocks.

Use applicable official skills described there, such as `next-dev-loop`, when available and compatible. Verify their source and instructions rather than inventing an official skill or copying a generic tutorial. The [official MCP guide](https://nextjs.org/docs/app/guides/mcp) describes runtime visibility; configure a supported project integration when useful and verify actual tool availability.

## Architecture and readiness

Choose server and client boundaries according to real interaction and data requirements. Keep privileged data and operations server-side, with validation and authorization at the actual entry points. Apply [coding-rules.md](coding-rules.md) and [Labour simplicity](simplicity.md).

For a multi-instance target, consult [official self-hosting guidance](https://nextjs.org/docs/app/guides/self-hosting) for shared cache, invalidation, and related runtime needs. Document the requirements without provisioning or deploying infrastructure. Do not add distributed mechanisms for an imagined workload.

Use relevant parts of the [production checklist](https://nextjs.org/docs/app/guides/production-checklist) for local readiness and meaningful verification. Run the actual project build, type, lint, and applicable behavior checks rather than assuming script names or treating a build as proof of every journey.

Sources were checked on 2026-09-17. Verify appropriate version guidance during use; setup of this library does not install a Next.js application or activate its MCP tools.
