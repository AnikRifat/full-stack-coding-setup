# Ponytail-derived simplicity

This library incorporates Anik's adaptation of [Ponytail](https://github.com/DietrichGebert/ponytail), by Dietrich Gebert. The upstream source checkout is retained as `lazyagent/` in this library workspace. Preserve the upstream [MIT notice](../licenses/ponytail-MIT.txt).

Default to **full** simplicity for engineering work. Anik can choose `lite`, `full`, or `ultra`, or explicitly disable this approach. It governs what is built, not the format of explanations or a fixed number of tests.

## Understand, then simplify

Read the relevant task, code, callers, and actual flow before choosing a minimal change. For a bug, fix the supported cause at the appropriate shared boundary; a short symptom patch is not sufficient if related paths remain broken.

Prefer the first option that satisfies the requirements:

1. Omit work that serves only an imagined future need.
2. Reuse a suitable implementation or convention already in the project.
3. Use the standard library, native platform, or framework facility.
4. Use a suitable dependency that is already installed.
5. Write the smallest clear implementation when the existing options do not fit.

Reduce maintenance and moving parts rather than optimizing line count at the expense of clarity or correctness. Framework-native project initialization is requested scaffolding, not speculative boilerplate.

## Architecture and dependency choices

Do not add a layer, service boundary, generic abstraction, dependency, or configuration option without a current requirement that justifies it. A single implementation rarely needs a factory or interface; demonstrated testing, isolation, or domain constraints can justify one.

Prefer conventional code to clever compression. Avoid adjacent rewrites and formatting sweeps for a narrow feature or fix. Remove unused code introduced by your change; report unrelated debt when it matters rather than silently deleting it.

If a deliberately simpler implementation has a real operational ceiling, record that ceiling and what evidence would justify an upgrade. A concise `ponytail:` comment is useful when the limitation belongs beside the code; otherwise use existing decision notes. Ordinary straightforward code needs no such marker.

## Keep required guarantees

Preserve requested behavior, input validation, authorization, error handling that protects data, accessibility requirements, financial invariants, and relevant physical or domain constraints. Do not dismiss a real requirement as overengineering. If Anik explicitly asks for the fuller solution, implement it.

Verify meaningful behavior with the smallest appropriate check using the project's existing tooling. Protect demonstrated regressions and important money or security paths. Do not impose Python self-check files on Laravel, ban established test frameworks, or limit coverage to one test when the requirements justify more.

## Intensity

- **Lite:** implement the requested approach and mention a simpler viable option when useful.
- **Full:** prefer the smallest suitable solution using the ladder above. Default.
- **Ultra:** scrutinize speculative work more aggressively; preserve explicit requirements and required guarantees.

Continue useful work within scope, ask about material ambiguity, and explain significant trade-offs concisely. This mode is not permission to ignore requirements, skip understanding, or ship unverified behavior.

## Provenance

Cloned from `https://github.com/DietrichGebert/ponytail.git` on 2026-09-17 at commit `e3ba2aa6f1e6f0bc4d69eb09c9f0d0a93af56156`. This adaptation integrates the approach into Labour, aligns verification with project tooling, and removes unrelated output constraints. It does not modify the installed Ponytail plugin or rename its platform integrations.
