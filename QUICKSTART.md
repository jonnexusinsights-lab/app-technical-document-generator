# Quick Start Guide

This guide will help you set up your environment and create your first technical article in minutes.

## 1. Prerequisites

Ensure you have the following installed:

1.  **Pandoc**: [Download Installer](https://pandoc.org/installing.html)
2.  **MiKTeX** (or TeX Live): [Download Installer](https://miktex.org/download)
    *   *Tip: Enable "Install missing packages on-the-fly" in MiKTeX settings.*

## 2. Generate a New Article

Open a PowerShell terminal in the project root and run:

```powershell
./scripts/new-article.ps1 -Title "My First Article"
```

This creates a new folder `articles/my-first-article` with a template `index.md` file.

> **Note**: For miscellaneous documents, use `./scripts/new-document.ps1` instead. It works the same way but creates files in the `documents` folder.

## 3. Write Your Content

Open `articles/my-first-article/index.md` in your text editor.

*   Write your article using Markdown (content goes below the `---` separator).


## 4. Build the PDF

Run the build script with the folder name (slug):

```powershell
# Build an Article (default)
./scripts/build.ps1 -Name "my-first-article"

# Build a Document (if you created one)
./scripts/build.ps1 -Name "my-document" -Collection "documents"

# Build from a nested folder
./scripts/build.ps1 -Name "my-tech-doc" -Collection "documents/technical"
```

*   **First Run**: MiKTeX and Pandoc may ask to install packages. Allow it.
*   **Success**: You will see `PDF generated successfully`.

## 5. View Result

Open the generated PDF:

`output/articles/my-first-article.pdf`
