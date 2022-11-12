# DeadviewLiveRenderHooks

## What is this?

This is an example repository that demonstrates an issue where deadview `phx-hook`s don’t run when a liveview is `live_render`ed on the page.

## How to repro

This repository uses two hooks, `HelloDeadView` and `HelloLiveView`. They each write a message to the browser console.

1. To repro the issue where a deadview hook is not executed, run `mix phx.server` and open a browser to [http://localhost:4000](http://localhost:4000). You’ll only see "Hello live view" in the browser console.
2. To observe that the deadview hook _does_ run when `live_render` is not called, remove the `live_render` in [index.html.heex](lib/deadview_live_render_hooks_web/templates/page/index.html.heex). The browser console should now show "Hello dead view".

## Expectation

The LiveView 0.18 [changelog](https://hexdocs.pm/phoenix_live_view/0.18.0/changelog.html#0-18-0-2022-09-20) included the enhancement "Add dead view support for hooks". I’d expect that this support would still work on a hybrid page that embeds a rendered LiveView but is otherwise dead.
