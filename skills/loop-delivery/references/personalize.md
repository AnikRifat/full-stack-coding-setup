# Capture and refine Anik's methods

Use this guide when Anik asks to personalize the library, save a preference, or turn a real workflow into a skill. Descriptions can be in Bengali or English; write library instructions in English unless requested otherwise.

## Begin with one real example

Useful prompts, chosen as needed rather than asked as a questionnaire:

- What were you trying to achieve, and for whom?
- Which constraints mattered most?
- What alternatives did you consider, and why did you choose this one?
- Which part of the plan or code do you consider good?
- What did an assistant misunderstand or overcomplicate?
- What happened after delivery?
- Which choice should repeat, and when would you choose differently?

Inspect any provided artifact before generalizing. Avoid asking for a full personal profile when one example can clarify the method.

## Turn evidence into a bounded instruction

Distinguish a confirmed preference, a project-specific requirement, a tentative pattern, and a proposed method. If it is uncertain whether an example should generalize, ask that question before recording it as a personal rule. You can record an explicitly labeled hypothesis while the question remains open.

A useful record contains the situation, decision, reason, source and date, applicable contexts, exceptions, and observed result if known. Do not invent motives or outcomes. Keep secrets and unnecessary client details out of the library.

Update [profile.md](profile.md) for shared personal defaults. Update the relevant task skill for a workflow decision; reusable code constraints belong in [global rules](../../../rules/README.md). Project conventions belong in project context unless the user identifies a reusable pattern. Revise existing wording instead of accumulating overlapping rules.

## Decide when to create another skill

The library already uses connected purpose-specific micro-skills. Add another only when it has a distinct request trigger and useful standalone guidance. Keep the [handoff contract](handoff.md) consistent. A business domain or new tool name alone is not sufficient reason to create a skill.

Use the available system `skill-creator` instructions for structural changes. Avoid copying generic framework manuals; add scripts only for a concrete repeated operation that benefits from reliable execution.

## Validate and report

Check the changed skill's frontmatter, metadata, and local reference links. For routing or decision changes, use relevant cases from [evaluation.md](evaluation.md). State the type of validation actually performed and append it to [validation-log.md](validation-log.md).

When editing this installed library, locate its source and installed copies. In the original setup, the source bundle is `/Users/anikrfiat/Development/skills/full-stack-coding-setup/skills/` and discovery copies are matching sibling folders in `~/.codex/skills/`. Validate changed skills and their connections, then synchronize only the affected bundle folders. If the library has moved, use its current documented source. Do not create an unrelated workspace or modify global instructions automatically.

Tell Anik which method changed and what evidence justified it. Do not claim the whole library now reflects his thinking after one example.
