# Strict coding and development rules

Anik requested strict coding and development rules on 2026-09-17. These are the enforceable starting rules for engineering under `loop-zero-to-production`. Apply the rules relevant to the work; they are not a requirement to add every capability mentioned below. Explicit project or user requirements can change a convention, with the reason recorded.

## Requirements and scope

1. **Understand before changing.** Inspect relevant code, callers, schemas, instructions, and actual behavior. Resolve ambiguity that would materially change the result; do not silently invent business rules or approval.
2. **Tie changes to the requested outcome.** Match established conventions. Preserve unrelated code, comments, formatting, and uncommitted work. Remove leftovers introduced by your change. Do not substitute a rewrite or speculative feature for a focused task.
3. **Justify complexity and dependencies.** Apply [simplicity](simplicity.md) to architecture and implementation. A new layer, package, configurable option, or separate service must serve a current requirement. Use one appropriate package manager per ecosystem, preserve lockfiles, and prefer compatible stable releases.

## Code correctness and boundaries

4. **Keep types meaningful.** New TypeScript applications enable strict checking. Use explicit types at important boundaries and narrow untrusted data before use. Do not use broad `any`, blind casts, or suppression comments to hide a defect. Type handwritten PHP inputs and return values where the framework contract permits; follow official version-matched conventions and project tooling.
5. **Validate and authorize on the server.** Validate untrusted inputs and enforce access to the specific action and data at the actual trust boundary. UI checks, hidden controls, client-provided IDs, and a user's logged-in status do not replace authorization. Escape output and parameterize database operations using framework facilities.
6. **Keep secrets and sensitive data private.** Use appropriate configuration and example files. Never put credentials in source, public client bundles, logs, or checkpoint notes. Client-exposed environment variables contain only intentionally public values. Use the established secret mechanism rather than inventing one.
7. **Protect data invariants.** Use schema constraints and transactions where required by the actual operation. Bound result sets and avoid demonstrated unnecessary query multiplication. Do not run destructive data commands or target production by assumption. Document relevant migration and compatibility requirements.
8. **Use the defensive money path.** Use exact money representation appropriate to the currency and provider; do not calculate balances with binary floating point. Verify event authenticity and duplicate behavior where integrations require them. Enforce relevant consistency and reconciliation rules. Explain the stricter choice and preserve it under Labour.
9. **Handle failures deliberately.** Do not swallow failures, return fabricated success, or log private payloads to conceal a problem. Define behavior for realistic integration, validation, and data errors. Make externally consequential retries safe according to the actual operation; do not add retry loops without evidence.
10. **Keep user flows usable.** Preserve needed keyboard interaction, labels, semantic controls, and relevant loading, empty, validation, and failure states. Follow the actual client brand and reference agreement. Do not substitute placeholder content or a visual resemblance score for agreed behavior.

## Development and completion

11. **Keep checks active.** Discover and run the applicable project formatter, lint, type, build, and behavior checks. New meaningful logic or fixes need appropriate observable verification; focused regression coverage should protect a demonstrated failure. Do not add tests that merely restate implementation, or impose test ceremony on reversible low-impact edits.
12. **Never hide a failing gate.** Do not disable checks, weaken type settings, delete a failing regression, or change expected results just to report success. When a requirement intentionally changes, update the relevant check to verify that requirement and explain it. Distinguish pre-existing failures from failures introduced by the work.
13. **Prove the finish line.** Verify the requested journey, not just compilation or scaffolding. Report checks actually executed and any material limit. A dependency failure or unavailable external service must remain visible; a deploy-ready claim states the environment assumptions. Actual deployment is excluded.

## Make the rules operational

During initialization, map applicable rules to native project checks and document their actual commands in project instructions. Use existing tools before adding another. Laravel projects should use their available PHP formatting and testing tools; Next.js projects should expose the applicable TypeScript, lint, build, and behavior checks. Do not invent an absent command or silently treat it as passed.

Before committing to a material design, compare it with these rules. Before finishing an increment, run the checks affected by the change. Repair supported failures and continue through the [operating loop](../skills/loop-zero-to-production/references/operating-loop.md); broader checks are warranted by changed behavior, failures, or unresolved concerns rather than repeated ceremony.
