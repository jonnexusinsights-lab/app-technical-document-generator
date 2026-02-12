# ADR-003: Docs-as-Code Architecture

## Status

Proposed

## Date

2026-02-11

## Context

We need an architectural pattern to manage content life-cycle. Traditional CMS (Content Management Systems) are often separate from the development workflow, making it hard to keep docs in sync with code or version them together.

## Decision

We will adopt the **Docs-as-Code** architecture pattern.

This means:

1.  **Source of Truth**: The Git repository.
2.  **Format**: Plain text markup (Markdown).
3.  **Tooling**: Same tools as software development (IDE, Linter, CI/CD).
4.  **Build Process**: Documentation is "compiled" (Pandoc) into artifacts (PDFs).
5.  **Review**: Content changes go through Pull Requests and Code Review.

## Alternatives Considered

### Wiki / Confluence

- _Pros_: Easy WYSIWYG editing.
- _Cons_: Hard to version control, hard to customize output, separate from code.

### Headless CMS

- _Pros_: structured content, API access.
- _Cons_: Overkill for a static document generator, requires hosting.

## Consequences

- **Positive**: Versioning, branching, merging, and review processes are identical to code. Content is text-based and easy to mass-edit.
- **Negative**: Higher barrier to entry for non-technical writers (need to know Git/Markdown).

## Compliance

- All content must be in the `articles/` or `documents/` folders as Markdown.
- No binary source files (like Word docs) served as the source of truth.
