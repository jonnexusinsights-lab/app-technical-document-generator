# Scripts

This directory contains PowerShell scripts for automating the creation and building of content.

## Scripts

### `new-article.ps1`
Scaffolds a new article in the `articles/` directory.
**Usage:** `./new-article.ps1 -Title "My Article"`

### `new-document.ps1`
Scaffolds a new document in the `documents/` directory.
**Usage:** `./new-document.ps1 -Title "My Document"`

### `build.ps1`
Compiles Markdown content to PDF using Pandoc and LaTeX.
**Usage:**
- Articles: `./build.ps1 -Name "my-article"`
- Documents: `./build.ps1 -Name "my-document" -Collection "documents"`
