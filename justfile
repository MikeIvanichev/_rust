export RUST_BACKTRACE := env_var_or_default("RUST_BACKTRACE", "short")

doc_args := "--all-features --no-deps --keep-going"

default:
  just --list

clean:
    cargo clean

fmt *flags:
    cargo fmt --all {{ flags }}
    taplo fmt
    yamlfmt .

check-fmt:
    cargo fmt --all -- --check
    taplo fmt --check
    yamlfmt -lint .

clippy *flags:
    cargo clippy --workspace --all-features --all-targets {{ flags }} -- --allow deprecated

check-deny:
    cargo deny --all-features check

check-pre-commit:
    prek run --all-files

check-committed:
    committed main..HEAD

# Runs all lints (fmt, clippy, deny, pre-commit hooks, commit messages)
lint: check-fmt clippy check-deny check-pre-commit check-committed

test *flags:
    cargo nextest run --cargo-profile testing --no-tests=pass {{ flags }}

doc *flags:
    RUSTDOCFLAGS="--cfg docsrs" cargo doc {{ doc_args }} --document-private-items {{ flags }}

doc-pub *flags:
    RUSTDOCFLAGS="--cfg docsrs" cargo doc {{ doc_args }} {{ flags }}

[private]
_assert-clean:
    #!/usr/bin/env bash
    set -euo pipefail

    if [[ -d .jj ]]; then
        status="$(jj diff --summary)"
    else
        status="$(git status --porcelain)"
    fi

    if [[ -n "$status" ]]; then
        echo "working copy has changes — start from a clean Git or jj state before running just fix" >&2
        exit 1
    fi

# Auto-fix formatting and lint warnings (requires clean working tree)
fix: _assert-clean
    just fmt
    cargo fix --workspace --allow-dirty --allow-staged
    cargo clippy --workspace --all-targets --fix --allow-dirty --allow-staged

changelog:
    git cliff -o CHANGELOG.md

hakari:
    cargo hakari manage-deps
    cargo hakari generate
