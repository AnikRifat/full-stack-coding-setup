# Frontend rules

Use feature-based structure, small presentational components, and containers only where state or orchestration requires them. Keep server, URL, local, and derived state distinct; filters in admin surfaces belong in URLs. Use typed discriminated unions or equivalent exhaustive state handling for domain states.

Use semantic HTML, typed component APIs, design tokens, and full state matrices. No `any`, hardcoded visual values, clickable non-controls, placeholder TODOs, dead code, or delivered console logs. Handle loading, empty, error, partial, slow, and mutation states. Use `aria-*` only where semantic HTML cannot express the need.

Keep interaction responsive, defer heavy panels, avoid unnecessary re-renders, preserve form input on server validation errors, and never auto-retry non-idempotent writes. Every exported component declares its prop API and states; every delivery passes responsive, keyboard, URL-state, error, token, copy, and anti-generic review.
