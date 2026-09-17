# Full-stack coding setup

A skill library for Anik's day-to-day development work: one named method per kind of job, so a request lands in the right one instead of being improvised each time. Fourteen skills, shared rules, and stack knowledge selected from the project actually open.

It is not a project template and it generates no application code by itself. It decides *how* the work is done: what to inspect first, what to ask, what counts as verified, and where a task stops.

## What it brings

- **One skill per outcome.** Planning, architecture, implementation, debugging, verification, review, UI, UX, support. Each one names what it owns and what it refuses, so responsibilities do not blur mid-task.
- **Three autonomous loops** that keep going until a finish line is met, rather than stopping at the first plausible answer.
- **Shared rules** applied by every engineering skill: understand before changing, keep the change small, keep required guarantees (authorization, money invariants, accessibility, data integrity), and never report an unrun check as passed.
- **Bounded output.** One rule caps what is read, carried, and reported, so an answer is the finding and its evidence rather than a narration of the work.
- **Evidence over assertion.** A fix is reported with the evidence that proves the cause, and the limits of what was verified.
- **Stack defaults with reasons.** Laravel + Blade + Livewire for a new business portfolio, Next.js when the workload actually justifies it, and an existing stack always wins.

## Which skill, when

### Daily work

| I am doing this | Use |
| --- | --- |
| Turning a goal into increments with acceptance criteria | `/delivery-plan` |
| Deciding a boundary, data flow, integration, or scale question | `/arch-design` |
| Writing the agreed change | `/code-implement` |
| Chasing a bug or regression to its root cause | `/bug-investigate` |
| Proving behavior works, or preparing release evidence | `/behavior-verify` |
| Reviewing a change before it lands | `/change-review` |
| Auditing an interface's visual clarity, consistency, accessibility | `/ui-audit` |
| Fixing a journey, task flow, or usability problem | `/flow-design` |

`/ui-audit` is how it looks and how it is built; `/flow-design` is what the user is trying to do. They stay separate on purpose.

### Customer-facing

| I am doing this | Use |
| --- | --- |
| Answering a customer's confusion, bug report, or enhancement request | `/support-resolve` |

`/support-resolve` classifies the request as confusion, bug, or enhancement, diagnoses it from real code, routes the repair to the task skills above, and answers in two separated parts: a client reply in business language, and an internal record with root cause, evidence, verification limits, and follow-up. It reports the reply; it does not send it, and it promises no date, refund, or remedy on your behalf.

### Loops — run until done

| I want this run end to end | Use | Cycle |
| --- | --- | --- |
| An idea taken to verified, deploy-ready | `/loop-delivery` | goal → inspect → ask → delegate → verify → reassess |
| A codebase audited, repaired, re-audited | `/loop-code-audit` | inspect → audit → synthesize → fix → verify → re-audit |
| An interface audited, fixed, re-checked | `/loop-interface-audit` | resolve context → audit → synthesize → fix → verify → reassess |

`/loop-delivery` is the only lifecycle loop and can reach every other skill. The other two are bounded: they audit and repair within their own domain. All three ask material questions as soon as they surface rather than guessing and reporting later.

Actual deployment is outside all of them. They finish at a verified, deploy-ready handover.

### Setup

| I am doing this | Use |
| --- | --- |
| Preparing this machine's Codex/Claude scratch environment | `/machine-init` |
| Initializing an application in a blank or instruction-only folder | `/project-init` |
| Picking up an existing or unfamiliar codebase before working in it | `/project-init` |

## Install

```bash
./tools/install.sh
```

Installs to every runtime present on this machine and removes installed folders this library no longer defines. Re-run after any rename or edit — installing for one runtime leaves the bundle invisible to the others.

| Runtime | Location | How |
| --- | --- | --- |
| Claude Code | `~/.claude/skills/` | symlink — edits take effect immediately |
| Codex | `~/.codex/skills/` | copy |
| Antigravity | `~/.gemini/config/skills/` | copy — the one path its IDE, CLI, and agent all read |

Antigravity is skipped when `~/.gemini` does not exist.

## Layout

| Path | Holds |
| --- | --- |
| `skills/` | One folder per skill: `SKILL.md`, its references, and its agent metadata |
| `rules/` | Global constraints every engineering skill applies |
| `capabilities/` | Stack-specific knowledge, selected from the project's real stack: Laravel + Livewire, Next.js, and databases (PostgreSQL / MySQL / MongoDB) |
| `commands/`, `agents/`, `tools/` | Trigger map, worker roles, runtime capability notes |

[LIBRARY.md](LIBRARY.md) is the internal map of how those layers relate; [AGENTS.md](AGENTS.md) holds the authoring and validation rules for changing this library.

Simplicity guidance here adapts [Ponytail](https://github.com/DietrichGebert/ponytail) by Dietrich Gebert ([MIT](licenses/ponytail-MIT.txt)).
