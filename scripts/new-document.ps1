<#
.SYNOPSIS
    Creates a new document with the required structure in the 'documents' folder.

.PARAMETER Title
    The title of the document.
#>

param (
    [Parameter(Mandatory = $true)]
    [string]$Title,

    [string]$Collection = "documents"
)

function Get-KebabCase {
    param([string]$str)
    # Remove special chars, lowercase, replace spaces with hyphens
    return $str.ToLower().Replace(" ", "-") -replace "[^a-z0-9-]", ""
}

$Root = Split-Path $PSScriptRoot -Parent
$Slug = Get-KebabCase $Title
$DocDir = Join-Path $Root "$Collection\$Slug"

if (Test-Path $DocDir) {
    Write-Error "The document '$Slug' already exists."
    exit 1
}

New-Item -ItemType Directory -Path $DocDir | Out-Null

$Date = Get-Date -Format "yyyy-MM-dd"
$Content = @"
---
title: "$Title"
date: $Date
author: "Author"
version: "1.0"
tags: []
description: "Document description."
---

# Introduction

Write your content here...
"@

Set-Content -Path (Join-Path $DocDir "index.md") -Value $Content -Encoding UTF8

Write-Host "Document created at: $DocDir" -ForegroundColor Green
Write-Host "To start writing: scripts/build.ps1 -Name $Slug -Collection documents" -ForegroundColor Cyan
