# Technical Articles - Docs-as-Code

This repository manages professional technical articles using a **Docs-as-Code** methodology. Articles are written in Markdown and automatically compiled into editorial-quality PDFs.

## Framework & Methodologies

This project adheres to the **ACE Framework (AI-assisted Code Engineering)**:

- **Repository**: [ACE Framework](https://github.com/jonnabio/ace-framework)
- **Specification**: [ACE-SPEC.md](ACE-SPEC.md)

## Project Structure

- **/articles**: Source code for articles. Each article lives in its own folder (e.g., `articles/my-article/index.md`).
- **/documents**: Source code for miscellaneous documents (project docs, internal notes). Similar structure to articles.
- **/assets**: Global images and diagrams. (Article-specific assets can go in the article's folder).
- **/templates**: LaTeX templates for PDF design.
- **/scripts**: Automation scripts for compilation.
- **/output**: Generated PDFs (ignored by git).

## Workflow

### 1. Create a New Article or Document

Run the helper script or create the folder manually:

```powershell
# For Articles
./scripts/new-article.ps1 -Title "My New Article"

# For Documents (Default: documents/)
./scripts/new-document.ps1 -Title "My New Document"

# For Documents in a Collection
./scripts/new-document.ps1 -Title "Architecture Spec" -Collection "documents/technical-specs"
```

This will generate a folder in the specified collection (or `articles/` by default) with the required frontmatter.

### 2. Write Content

Edit the `.md` file. Use standard Markdown.

- **Code**: Use code blocks with specified language (e.g., \`\`\`python).
- **Math**: Use LaTeX syntax between dollar signs `$E=mc^2$`.
- **Images**: Reference relative images `![Alt](image.png)` or from assets `![Alt](../../assets/diagram.png)`.

### 3. Compile to PDF

To generate the final PDF with professional styles:

```powershell
# Build an Article (default structure: /articles/slug/index.md)
./scripts/build.ps1 -Name "my-new-article"

# Build a Document from a specific collection
./scripts/build.ps1 -Name "my-new-document" -Collection "documents"

# Build from a nested collection
./scripts/build.ps1 -Name "my-doc" -Collection "documents/technical-framework"

# Build a standalone markdown file (e.g., documents/notes.md)
./scripts/build.ps1 -Name "notes" -Collection "documents"
```

The resulting PDF will be in `output/articles/` or `output/documents/`.

## Requirements

- [Pandoc](https://pandoc.org/installing.html)
- A LaTeX distribution (e.g., [MiKTeX](https://miktex.org/) or TeX Live) for PDF generation.
- PowerShell (Windows)

## Standards

### Conventions

- **Folders**: `kebab-case` (lowercase, hyphen-separated).
- **Files**:
  - **Articles**: Should ideally use `index.md` within a folder for better asset management.
  - **Documents**: Can be standalone `.md` files or `index.md` in a folder.
