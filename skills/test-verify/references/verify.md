# Verification method

Derive checks from observable acceptance criteria and the real failure risk. Inspect existing test conventions before adding a new test style.

- Verify the primary journey and the changed boundary, including authorization, validation, persistence, money, or integration behavior when affected.
- Run the smallest meaningful project commands first. Broaden checks when the change, failure, or unresolved risk justifies it.
- Keep test fixtures and assertions focused on behavior; do not write tests that mirror an implementation detail without protecting a useful guarantee.
- Distinguish passed local checks from unavailable integration, external-provider, performance, or production checks.

A passing build, lint command, or scaffold does not prove the requested journey works.
