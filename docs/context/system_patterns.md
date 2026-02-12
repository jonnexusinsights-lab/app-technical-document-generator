# System Patterns

> Established patterns and conventions used in this codebase.

---

## Purpose

This document captures patterns for the **App Technical Document Generator**.

---

## Architecture Patterns

### Docs-as-Code

The system follows a transformation pipeline:
`Source (Markdown)` -> `Build Script (PowerShell)` -> `Engine (Pandoc + LaTeX)` -> `Artifact (PDF)`

### Directory Structure

- `articles/`: Independent article folders.
- `documents/`: Collections or standalone documents.
- `assets/`: Global images/resources.
- `scripts/`: Automation logic.
- `templates/`: styling definition.

---

## Scripting Patterns (PowerShell)

### Parameter Binding

All scripts must use `[CmdletBinding()]` and typed parameters.

```powershell
[CmdletBinding()]
param (
    [Parameter(Mandatory = $true)]
    [string]$Title
)
```

### Path Handling

Always use `$PSScriptRoot` to resolve paths relative to the script location.

```powershell
$RootDir = Resolve-Path "$PSScriptRoot/.."
```

---

## Content Patterns (Markdown)

### Frontmatter

YAML frontmatter is used for metadata passed to the template.

```markdown
---
title: My Title
author: My Name
date: 2024-01-01
---
```

### Image References

Images should be relative to the markdown file or in `../../assets/`.

---

## ADR References

- [ADR-001: ACE Framework Adoption](../adr/ADR-001-ace-framework-adoption.md)
- [ADR-002: Technology Stack](../adr/ADR-002-technology-stack.md)
- [ADR-003: Architecture Pattern](../adr/ADR-003-architecture-pattern.md)
