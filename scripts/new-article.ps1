<#
.SYNOPSIS
    Creates a new article with the required structure.

.PARAMETER Title
    The title of the article.
#>

param (
    [Parameter(Mandatory = $true)]
    [string]$Title
)

function Get-KebabCase {
    param([string]$str)
    # Remove special chars, lowercase, replace spaces with hyphens
    return $str.ToLower().Replace(" ", "-") -replace "[^a-z0-9-]", ""
}

$Root = Split-Path $PSScriptRoot -Parent
$Slug = Get-KebabCase $Title
$ArticleDir = Join-Path $Root "articles\$Slug"

if (Test-Path $ArticleDir) {
    Write-Error "The article '$Slug' already exists."
    exit 1
}

New-Item -ItemType Directory -Path $ArticleDir | Out-Null

$Date = Get-Date -Format "yyyy-MM-dd"
$Content = @"
---
title: "$Title"
date: $Date
author: "Author"
version: "1.0"
tags: []
description: "Article description."
---

# Introduction

Write your content here...
"@

Set-Content -Path (Join-Path $ArticleDir "index.md") -Value $Content -Encoding UTF8

Write-Host "Article created at: $ArticleDir" -ForegroundColor Green
Write-Host "To start writing: scripts/build.ps1 -Name $Slug" -ForegroundColor Cyan
