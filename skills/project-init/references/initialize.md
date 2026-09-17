# Initialize this project

This project workflow is separate from [machine-init](../../machine-init/SKILL.md). It does not configure global Codex or Claude scratch environments, credentials, shell settings, or machine-wide tooling. If a verified PC-level prerequisite blocks the work, identify it and use the dedicated PC setup skill only for the explicit environment work.

Source: Anik requested that he can invoke `loop-delivery` in a blank folder to initialize the project. His default for a new business portfolio is Laravel + Livewire. Read the coordinator's [product method](../../loop-delivery/references/product-method.md), [arch-design](../../arch-design/SKILL.md), and the applicable capability guidance as the task requires.

## Establish the project before scaffolding

Inspect the actual working directory, including hidden files and inherited instructions. Distinguish a genuinely empty folder, a folder containing only agent instructions or planning notes, and an existing project. Do not run a new-project generator over an existing application.

Reuse the supplied brief. If the folder is blank and no brief exists, ask what is being built and for whom, then establish the core journey, audience, product type, and domain. Do not invent a demo product merely to initialize something.

Recommend the smallest suitable stack and architecture. For a business portfolio without a different choice, use Laravel + Blade + Livewire. For other product types, apply the Laravel backend default where it fits, considering actual platform, workflow, data, and integration requirements. Consider Next.js through its [capability guidance](../../../capabilities/frameworks/nextjs.md) when the scalability and frontend requirements justify it. Existing or explicitly chosen stacks take precedence.

Establish the application's name when a generator requires it and verify available runtimes and package managers. Ask about hosting capabilities when they affect runtime or architecture choices, even though actual deployment is excluded. Do not install machine-wide runtimes or rewrite shell configuration as a side effect of project initialization.

## Scaffold with native tools

Use the current official installer or package manager for the chosen stack. Read its local help and version-matched official documentation rather than assuming flags or silently pinning this skill to a framework release.

Use the requested project directory as the application root. Generators that require an empty directory can fail when `AGENTS.md`, planning notes, or `.git` already exists. In that case, scaffold in a temporary local staging directory, inspect the generated files, and transfer only nonconflicting application files while preserving the existing instructions and Git metadata. Resolve a real conflict explicitly rather than overwriting or deleting user files.

Choose a starter according to the actual requirements. A public portfolio does not automatically need authentication, an admin dashboard, tenancy, an API, or a payment system. Prefer a base application plus needed packages when a larger starter would introduce unnecessary features. Use an official Livewire starter when its included capabilities fit the brief.

Install only justified project dependencies, retain their lockfiles, and use local development configuration. Keep real secrets out of source and provide appropriate example configuration.

## Establish official guidance and project context

For Laravel, follow the [Laravel capability](../../../capabilities/frameworks/laravel-livewire.md) to configure official Boost guidelines and applicable skills. For Next.js, use the [Next.js capability](../../../capabilities/frameworks/nextjs.md). Confirm what was generated and what is callable; creating an MCP configuration is not proof that a tool is active in the current session.

Run the host's `/init` workflow when available to generate project context, then merge rather than overwrite existing guidance. If that command is unavailable, inspect the initialized codebase and create or extend the project's `AGENTS.md` directly, stating actual facts.

Record the chosen stack and versions, purpose and domain, core journey, useful commands, architecture decisions, data or integration requirements, relevant skills, [coding rules](../../../rules/coding.md), and verified checks. Label unknown hosting or external integrations instead of inventing answers. Follow the inherited gstack routing requirements when applicable.

Validate initialization with the smallest meaningful local checks for the generated project, then continue into the first requested feature through [operating-loop.md](../../loop-delivery/references/operating-loop.md). Scaffolding alone is not completion of an MVP. Finish a setup-only request at the verified setup.
