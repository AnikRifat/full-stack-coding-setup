# Karpathy-inspired engineering rules

Requested by Anik on 2026-09-17. Source: the community [Karpathy-inspired guidelines](https://github.com/multica-ai/andrej-karpathy-skills), previously hosted under `forrestchang/andrej-karpathy-skills`. This is an adapted interpretation of the repository's principles, not an official skill authored or endorsed by Andrej Karpathy.

Apply these alongside [simplicity](simplicity.md):

- **Reason before editing.** Expose assumptions and uncertainty that would change the implementation. Ask about consequential ambiguity; use documented defaults for routine choices.
- **Keep the solution direct.** Satisfy the actual requirements without speculative features, unused configuration, or a layer that has no demonstrated purpose.
- **Keep changes tied to the task.** Follow local conventions, preserve unrelated code and comments, and remove leftovers introduced by your own changes. A small change must still address the real cause.
- **Work toward observable success.** Connect increments to meaningful checks, use failures to guide corrections, and continue until the requested outcome is supported by evidence.

Scale verification to the change. Use established project tooling and focused regression checks for meaningful failures; do not add ceremony or tests that merely restate the implementation. These rules govern engineering choices without inventing product requirements or expanding task authorization.
