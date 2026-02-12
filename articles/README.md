# Articles Collection

This directory contains the source code for technical articles.

## Structure

Each article should be in its own subdirectory:

```
articles/
├── my-article-slug/
│   ├── index.md       # Main content
│   ├── image1.png     # Local assets
│   └── code.py        # Code snippets
└── README.md
```

## Creating a New Article

Run the helper script:

```powershell
./scripts/new-article.ps1 -Title "My Article Title"
```

## Building

To compile an article to PDF:

```powershell
./scripts/build.ps1 -Name "my-article-slug"
```
