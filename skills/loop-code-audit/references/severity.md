# Severity and repair sequence

Classify issues by impact, likelihood, reversibility, and exposure.

| Severity | Meaning |
| --- | --- |
| Critical | Likely data loss, money loss, privilege escalation, secret exposure, or outage on a primary journey |
| High | Incorrect or unsafe behavior affecting users, authorization, important data, or a core journey |
| Medium | Credible regression, operational cost, maintainability risk, or degraded noncritical behavior |
| Low | Local clarity or consistency issue with concrete maintenance or user cost |

Money, secrets, authentication, authorization, PII, destructive writes, and irreversible operations never rank below High. Sequence repairs by risk, primary-user impact, dependency, and effort. State what will not be fixed and why; avoid speculative hardening without evidence.
