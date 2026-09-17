# Capabilities

Capabilities contain stack-specific knowledge. They are selected from project context; they do not define a workflow or override repository instructions.

Selection is by trigger, not by preference. When a row's signal is present in the task, read that capability before writing the change — do not ask which one applies.

| Signal in the task | Read |
| --- | --- |
| PHP, Laravel, Livewire, Blade, Artisan, Eloquent | [Laravel and Livewire](frameworks/laravel-livewire.md) |
| Next.js, App Router, server components, `next.config` | [Next.js](frameworks/nextjs.md) |
| Express, Node API, MERN, a React SPA against a separate API | [Node and React](frameworks/node-react.md) |
| A schema change, an index, a query that got slow, MongoDB | [databases](databases.md) covering PostgreSQL, MySQL, and MongoDB |
| Auth, roles, uploads, PII, secrets, anything touching payment | [security](security.md) |
| A job, an event, a consumer, a webhook, a scheduled task | [messaging](messaging.md) |
| A failure only reproducible in production, an alert, "how would we know" | [observability](observability.md) |

More than one row can be true at once. A payment webhook is security and messaging and
observability; read all three rather than picking the closest.
