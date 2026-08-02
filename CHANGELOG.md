# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/)
and this project adheres to [Semantic Versioning](https://semver.org/).

## [unreleased]

### 🚀 Features

- Init
- Merge in epage's upstream
- Setup codecov
- Lots of cleanup and iftt + toml and yaml formatters 
- Switch from cargo binstall to taiki-e/install-action
- Update renovate and fix ci rust version

### 🐛 Bug Fixes

- *(ci)* Fix Renovate regexes
- Bump rust versiob to 1.95.0 and set it in tests/integration
- Fix ci for msrv and coverage
- Skip audit and coverage on empty private runs
- Run audits on private repos too
- Presist gh creds in ifttt-lint
- Fix template action
- *(ci)* Pin taiki-e/install-action to versioned release
- *(ci)* Select toolchains via RUSTUP_TOOLCHAIN and sync MSRV pins
- *(ci)* Run the ifttt-lint action directly instead of through prek
- Lint all features in the local clippy recipe
- Harden init.sh placeholder substitution
- Make AGENTS.md canonical and symlink CLAUDE.md to it
- Drop the stale Claude Code section from AGENTS.md

### 🚜 Refactor

- *(ci)* Unify workflow style
- *(tests)* Discover test modules with automod
- *(tests)* Remove automatic module discovery

### 📚 Documentation

- Set changelog base
- *(contrib)* Remove reference to travis
- *(contrib)* Clarify our policies
- *(contrib)* Fix tpo
- Cross-reference source code view
- *(contrib)* Fix language
- *(readme)* Add a hyphen
- *(contrib)* Try to remove ambiguity about commits/PRs
- Switch links to https
- *(docsrs)* Update to new doc_cfg feature name
- *(agents)* Require docs.rs source links

### ⚡ Performance

- Optimize release builds

### 🎨 Styling

- *(ci)* Match auto-generated style
- *(ci)* Match auto-generated style
- Ignore large Err variants
- Extra continues can communicate intent

### 🧪 Testing

- Verify readme
- *(docs)* Run documentation tests
- *(docs)* Check future Rust channels

### ⚙️ Miscellaneous Tasks

- Fix init.sh and cleanup testsuite
- First step
- *(ci)* Quote strings in yaml
- Don't set rustflags by default
- Update release process
- Use workspace inheritance
- *(ci)* Remove rustfmt/clippy next jobs
- *(ci)* Expand approved licenses
- Include Cargo.lock
- *(ci)* Update stabilidyDays to new syntax
- *(ci)* Delay Renovate PRs until ready
- *(ci)* Lower the MSRV churn for template
- *(ci)* Use new minimumReleaseAge field
- *(ci)* Ban for_each
- *(ci)* Clarify why map_or is banned
- *(gh)* Ban rebase merges
- Remove clippy lint past MSRV (needs 1.67)
- *(ci)* Catch clippy config failures
- Update precommit hooks
- Expand update window so more likely to be hit
- *(ci)* Ensure lockfile isn't stale
- *(ci)* Ensure latest deps are good
- Update pre-commit hooks
- *(renovate)* Make style consistent
- *(renovate)* Update config
- *(renovate)* Update MSRV on release
- *(renovate)* Try to fix schedule
- *(ci)* Don't fail on wildcards
- Approve ISC
- *(ci)* Don't set patch for MSRV
- *(ci)* Updaet Renovate schema
- *(ci)* Normalize json5 syntax
- *(ci)* Ensure MSRV is quoted
- *(ci)* Update pre-commit hooks
- *(config)* Migrate config .github/renovate.json5
- Make renovate commits to match
- *(ci)* Optimize CI runs
- *(ci)* Cancel prior CI runs
- *(ci)* Be explicit in renovate updates
- *(ci)* Add m1 runners
- *(ci)* Only check intel mac on schedule
- *(ci)* Gather coverage
- *(ci)* Use latest for coverage
- *(ci)* Defer to package.rust-version for clippy
- *(ci)* Only verify MSRV for published packages
- *(ci)* Run the latest clippy
- *(ci)* Prevent cargo-hack from blowing away our lockfile
- *(ci)* Configure standard lints
- *(ci)* Don't update stable and MSRV together
- Normalize clippy lint names
- Encourage use of workspace.dependencies
- Encourage a single test binary
- *(ci)* Use latest SARIF
- *(ci)* Fix all rust-version-specific checks to stable
- *(ci)* Speed up lockfile check
- *(ci)* More exhaustively check features
- *(ci)* Don't check for unused crates
- Dont check must_use
- Don't warn on unsafe
- Remove clippy::tests_outside_test_module
- Move print lints to lib.rs
- Drop workspace.dependencies
- Only check missing_docs in lib
- Allow print in tests
- *(ci)* Ensure CI job always runs
- *(ci)* Skip branch protections
- *(ci)* Don't block on Lint Commits
- *(ci)* Auto-merge linter version updates
- *(ci)* Try again with not auto-updating MSRV
- *(ci)* Reduce noisy lints
- *(ci)* Reduce noisy lints
- *(ci)* Allow prelude wildcard imports
- *(ci)* Lint clippy::items_after_statements seems too strict
- Remove lints that lead to bad code
- Update deny config
- Fix typo
- Encourage use of repository
- Encourage cloneable repositories
- *(ci)* Auto-update Mac now that latest uses m1
- *(ci)* Verify version requirements
- Fix clippy::lint_groups_priority for 1.80
- Ensure pre-commit gets non-system Python
- *(ci)* Fix STABLE updates
- *(ci)* Report deprecations in the review
- *(ci)* Allow 2-clause BSD
- Ensure MSRV-aware resolver is used
- Lint for unnameable_types like unreachable_pub
- *(ci)* Report more results
- *(ci)* Improve perf at the cost of coverage
- Update RenovateBot
- Fix regex for renovatebot
- *(pre-commit)* Update default stages
- *(pre-commit)* Use default stages
- *(pre-commit)* Update hooks
- *(pre-commit)* Ensure commit-msg hook is installed
- Strip benches on publish
- Avoid MSRV problems out of the box
- Add zlib license
- Add license for unicode-ident for proc-macro2
- *(docsrs)* Remove redundant --cfg
- *(ci)* Reduce cached content
- *(ci)* Fix env variable syntax
- Add license for libfuzzer
- *(ci)* String_to_string was merged into implicit_clone
- *(ci)* Ensure latest-deps jobs actually uses them
- *(ci)* Give more control over where alt version jobs run
- *(ci)* Attempt to auto-update pre-commit
- *(ci)* Attempt to auto-update pre-commit
- *(ci)* Switch from pre-commit to prek
- *(ci)* Pin the prek version
- Update prek hooks
- Update prek hooks (#41)
- *(ci)* Automatic update from template
- *(ci)* Automatic update from template (#40)
- *(ci)* Fix name of clippy::empty_enums
- *(ci)* Fix how rustfmt jobs run
- *(ci)* Clean up previous branch in case it was leaked
- *(ci)* Update action
- *(ci)* Fix prek version updating
- *(release)* Make use of new template variable
- *(ci)* Pin actions
- *(ci)* Don't persist git credentials by default
- *(ci)* Use env instead of templates
- *(ci)* Switch from cargo-audit to cargo-deny
- *(ci)* Adopt zizmor
- *(ci)* Adopt zizmor (#54)
- *(ci)* Fix content
- *(ci)* Shorten workflow name
- *(ci)* Add a central audit job
- *(ci)* Fix the audit display name
- *(pre)* Always check zizmor
- *(ci)* Run audits more frequently
- *(pre)* Always check zizmor (#57)
- *(gh)* Fix template updating
- *(gh)* Document why template updating needs credentials
- Anchor includes to be at package root
- Anchor includes to be at package root (#60)
- *(ci)* Ignore collapsible_match
- *(ci)* Switch to versioned install action
- *(ci)* Name every step
- *(ci)* Switch to versioned install action (#62)
- *(ci)* Approve another license
- Sync with epages remote
- Bump nitghtly and add llvm-tools-preview
- Update the nightly toolchain weekly instead of continuously
- *(ci)* Update public template workflows
- *(renovate)* Batch compatible action updates
- *(dev)* Manage development tools with mise
- *(lint)* Expand workspace lint policy
- *(lint)* Deny Cargo build warnings
- *(package)* Whitelist published package files
- *(docs)* Add public documentation build
- *(security)* Require explicit Git sources
- *(ci)* Require review for template updates
