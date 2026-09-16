# Deploy-ready verification and handover

Source: Anik explicitly chose a verified project ready to deploy as this workflow's finish line, excluding actual deployment, on 2026-09-17.

Check the implemented project against agreed behavior and relevant required checks. Verify the core journey and applicable local startup, configuration, data, integration, and asset behavior. A successful scaffold or build is not proof that the journey works.

## Prepare the actual deliverable

Reuse known hosting constraints. Ask about the intended environment when it changes readiness or architecture decisions. If the target remains unknown, state completed checks and unresolved compatibility rather than declaring universal deployability.

Use existing scripts and official version-matched guidance. Identify actual runtime requirements, example configuration, build commands, migration requirements, storage, queue, scheduler, or external services when the implementation needs them. Do not invent backups, rollback, credentials, or integration verification.

Actual deployment, infrastructure provisioning, production migrations, publishing to production, and rollout monitoring are outside this skill. Do not route into a deployment skill as an automatic final stage. A later explicit deployment request is a separate workflow that can use this handover.

## Hand over a verified project

Provide useful local setup and verification commands, preparation notes, known limitations, and any remaining external dependency. Keep real secrets out of examples. Client handover includes agreed content and user-facing behavior, not only backend functionality.

Finish when the requested deliverable and applicable checks are complete. Report evidence supporting readiness, distinguishing local or test-environment checks from production verification that this workflow has not performed. Return this result through [the shared handoff](handoff.md).
