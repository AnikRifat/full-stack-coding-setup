# Laravel and Livewire guidance

Personal default: new business portfolios use Laravel + Blade + Livewire unless Anik specifies another stack. Other product types use the established project stack or a recommendation grounded in their requirements. Do not hardcode a framework version in this skill.

## Official agent resources

Use [Laravel Boost](https://laravel.com/framework/docs/13.x/boost) in Laravel projects for official guidelines and package-specific skills. Its documented setup is:

```sh
composer require laravel/boost --dev
php artisan boost:install
```

Check the installed command's help and select the actual host's supported agent integration, guidelines, and skills. Inspect generated changes and preserve project instructions. Boost detects installed packages; for Livewire, use its generated `livewire-development` skill when present. Load testing, styling, or UI skills only for their applicable work.

Read installed guidelines and relevant project rules. Use Boost's version-aware documentation search when callable; otherwise consult official documentation for the installed packages. Record project rules through Boost's rule tool when available, or retain them in project instructions if unavailable.

`php artisan boost:update` refreshes generated resources; inspect its help for supported discovery behavior. Preserve hand-maintained instructions and explicit project decisions when updating.

## Choose the smallest suitable application

For a public business portfolio, begin with normal Laravel pages and shared Blade layouts. Use Livewire for required dynamic behavior. Add authentication, administration, databases, or complex state only when the brief requires them. The stack preference does not mean every section must be a Livewire component.

An [official Livewire starter kit](https://laravel.com/framework/docs/13.x/starter-kits#livewire) can be useful when its included features fit the product. A base Laravel application with the needed Livewire package can be simpler for a public site. Use the actual installer help to choose between them.

Before writing components, use the matching [Livewire installation documentation](https://livewire.laravel.com/docs/4.x/installation) and relevant feature docs for the installed major version. Avoid duplicate frontend runtimes and unneeded JavaScript dependencies.

## Source and verification

Sources were checked on 2026-09-17. The versioned links show the documentation inspected during library setup; verify the appropriate current or installed version at project initialization. These instructions configure future Laravel applications, not this Markdown skill library. Do not claim Boost or Livewire was installed into an application until it actually was.
