# ADR-002: Technology Stack Selection

## Status

Proposed

## Date

2026-02-11

## Context

We need to select the technology stack for the "App Technical Document Generator". The goal is to produce high-quality PDF documentation from Markdown source files using a "Docs-as-Code" approach. The system needs to be automated and easy to use on Windows.

## Decision

We select the following stack:

1.  **Source Format**: **Markdown** (CommonMark + Pandoc extensions).
    - _Why_: widely used, readable version-controllable.
2.  **Transformation Engine**: **Pandoc**.
    - _Why_: The de-facto standard for universal document conversion.
3.  **Typesetting Engine**: **LaTeX** (via MiKTeX or TeX Live).
    - _Why_: Unmatched quality for PDF output, specifically for technical content (math, code highlighting, footnotes).
4.  **Automation/Scripting**: **PowerShell**.
    - _Why_: Native to Windows (User's OS), powerful scripting capabilities.

## Alternatives Considered

### HTML + CSS -> PDF (e.g., WeasyPrint, Prince, browser headless)

- _Pros_: Easier styling with CSS.
- _Cons_: Pagination and print-layout controls are often less precise than LaTeX for academic/technical layouts.

### Python Scripts

- _Pros_: Cross-platform, rich ecosystem.
- _Cons_: Requires Python runtime management on Windows. PowerShell is built-in.

## Consequences

- **Positive**: High-quality output, standard "Docs-as-Code" workflow.
- **Negative**: Dependency on a LaTeX installation (heavy download). LaTeX templates can be complex to edit.

## Compliance

- Verify `scripts/` use PowerShell.
- Verify `templates/` contain `.tex` files.
- Verify build output is PDF.
