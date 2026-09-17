# Code audit method

Start from requested outcomes and actual behavior, not a generic checklist. Trace entry points through validation, authorization, domain rules, persistence, integrations, error handling, and observable response. Inspect callers before changing an interface and repository conventions before calling a pattern wrong.

Audit state and failure paths: malformed input, absent records, authorization denial, duplicate request, concurrency, partial failure, slow dependency, large data, and external-service failure where applicable. Treat test and static-analysis output as evidence, not as complete proof of behavior.

Use separate passes for independent risk areas, then synthesize. A full code audit may include correctness, security, performance, maintainability, and test coverage; omit a pass when the requested scope or code makes it irrelevant. Do not create a finding merely to fill a category.
