# Contributing to {{PROJECT}}

## Getting Started

### Development Environment

Install and activate [mise](https://mise.jdx.dev/installing-mise.html) using the method appropriate for your operating system. Shell activation makes mise select project-specific tool versions when you enter the repository. Then provision the development environment from the repository root:

```sh
mise install
```

Mise reads the pinned Rust toolchain from `rust-toolchain.toml` and installs the exact development-tool versions declared in `mise.toml`. Cargo-backed tools explicitly wait for Rust to be available, so this also works on a machine without an existing Rust installation. Mise delegates Rust installation to rustup and reuses an initialized standard rustup setup when one is already present.

Mise stores tool versions centrally and selects them according to the configuration for the current directory. Multiple projects can therefore use different versions of the same tool; outside this repository, another project, global mise configuration, or the system environment takes precedence. If shell activation is unavailable, prefix a command with `mise exec --`, for example `mise exec -- just lint`.

Installing these tools globally through a system package manager is entirely reasonable, but a shared project benefits from treating each development tool like any other dependency: it has a version selected for this repository. Using `mise install` makes contributor environments reproducible, lets CI consume the same pins where it uses mise, and makes upgrades explicit and reviewable.

Commands remain exposed through `just`; run `just` to list them.

### Managed Development Tools

`mise.toml` is the source of truth for the complete version list. It currently manages:

| Tool | Used by |
|---|---|
| [just](https://github.com/casey/just) | Project command runner (`justfile`) |
| [cargo-deny](https://github.com/EmbarkStudios/cargo-deny) | `just check-deny` — license, ban, and advisory checks |
| [cargo-hack](https://github.com/taiki-e/cargo-hack) | Feature-matrix checks in CI |
| [cargo-hakari](https://github.com/guppy-rs/guppy/tree/main/tools/cargo-hakari) | `just hakari` — workspace-hack dependency unification |
| [cargo-nextest](https://github.com/nextest-rs/nextest) | `just test` — test runner |
| [cargo-llvm-cov](https://github.com/taiki-e/cargo-llvm-cov) | Coverage generation in CI |
| [clippy-sarif](https://github.com/psastras/sarif-rs) and `sarif-fmt` | Clippy code-scanning reports in CI |
| [committed](https://github.com/crate-ci/committed) | Conventional Commit checks |
| [git-cliff](https://github.com/orhun/git-cliff) | `just changelog` — changelog generation |
| [prek](https://github.com/j178/prek) | `just check-pre-commit` — pre-commit hooks |
| [Taplo](https://github.com/tamasfe/taplo) | `just fmt` / `just check-fmt` — TOML formatting |
| [yamlfmt](https://github.com/google/yamlfmt) | `just fmt` / `just check-fmt` — YAML formatting |

## Workspace Layout

- `crates/` contains library crates and reusable supporting crates.
- `tests/` contains workspace member crates that produce integration or end-to-end test binaries.
- Reusable test harnesses, fixtures, and helpers belong in `crates/`, not `tests/`.
- Other binary categories should live in their own top-level directories, such as `services/` or `tools/`.

## Feature Requests

Need some new functionality to help? You can let us know by opening an
[issue][new issue]. It's helpful to look through [all issues][all issues] in
case it's already being talked about.

## Bug Reports

Please let us know about what problems you run into, whether in behavior or
ergonomics of API. You can do this by opening an [issue][new issue]. It's
helpful to look through [all issues][all issues] in case it's already being
talked about.

## Pull Requests

Looking for an idea? Check our [issues][issues]. If the issue looks open ended,
it is probably best to post on the issue how you are thinking of resolving the
issue so you can get feedback early in the process.

Already have an idea? It might be good to first [create an issue][new issue]
to propose it so we can make sure we are aligned and lower the risk of needing
to re-work some of it.

### Process

As a heads up, CI runs the following checks:
- warnings turned to compile errors
- `cargo nextest run`
- `rustfmt`
- `taplo fmt --check`
- `yamlfmt -lint`
- `clippy`
- `rustdoc`
- `cargo deny`
- `prek`
- [`committed`](https://github.com/crate-ci/committed) for [Conventional Commits](https://www.conventionalcommits.org)
- [`typos`](https://github.com/crate-ci/typos) for spelling
- `zizmor`
- MSRV checks
- minimal-version checks
- coverage generation

Run `just lint` locally to catch most of these before pushing.

We request that the commit history gets cleaned up.

Commits should be atomic, meaning they are complete and have a single responsibility.
A complete commit should build, pass tests, update documentation and tests, and not have dead code.

PRs should tell a cohesive story, with refactor and test commits that keep the
fix or feature commits simple and clear.

Specifically, we would encourage:
- File renames be isolated into their own commit
- Add tests in a commit before their feature or fix, showing the current behavior

[issues]: {{REPOSITORY}}/issues
[new issue]: {{REPOSITORY}}/issues/new
[all issues]: {{REPOSITORY}}/issues?utf8=%E2%9C%93&q=is%3Aissue
