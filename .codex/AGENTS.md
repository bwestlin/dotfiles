# ~/.codex/AGENTS.md

## Default working agreements (apply everywhere)

- Prefer small, reviewable changes.
- Before coding: restate the goal + constraints in 3-6 bullets.
- After coding: ensure tests/lint/build run (or explain why they can't).
- Don't introduce new dependencies unless explicitly requested.
- Ask before making structural refactors.
- Keep docs in-sync with behavior changes.
- Be concise in summaries.

## Repo hygiene

- Add/maintain: README, docs/overview.md, docs/decisions/ (ADRs), and docs/dev-commands.md.
- If you make a non-trivial decision, write an ADR (short is fine).

## Output expectations

- Provide exact commands to run.
- Call out breaking changes and migration steps.

## Language specifics

### RUST

#### Priorities

1. Prefer Rust idioms already used where changes are introduced.

#### Testing & linting

- Run `cargo check` and `cargo clippy` after Rust changes.
- Do not run tests that require network access.

#### Structure

- New modules should live under existing folders (no new top-level crates unless there is very good reason for it, if it is then ask).

#### Error handling

- Prefer using `thiserror` for error handling unless there is a clear different pattern in existing codebase.
- Avoid `.unwrap()` and `.expect()` unless it's in test code.

#### Formatting

- By default conform to `rustfmt` with:
  - `imports_granularity = "Item"`.
  - `group_imports = StdExternalCrate`.
