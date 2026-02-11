<#
.SYNOPSIS
    Compiles a Markdown item (article or document) to PDF using Pandoc and LaTeX.

.DESCRIPTION
    This script takes a folder name and generates a PDF in the output folder.

.PARAMETER Name
    The folder name (slug) of the article or document.

.PARAMETER Collection
    The collection type: "articles" (default) or "documents".

.EXAMPLE
    .\build.ps1 -Name "my-article"
    .\build.ps1 -Name "my-doc" -Collection "documents"
#>

param (
    [Parameter(Mandatory = $true, Position = 0)]
    [Alias("Article")]
    [string]$Name,

    [Parameter(Mandatory = $false)]
    [ValidateSet("articles", "documents")]
    [string]$Collection = "articles"
)

$Root = Split-Path $PSScriptRoot -Parent
$SourcePath = Join-Path $Root "$Collection\$Name"
$OutputPath = Join-Path $Root "output\$Collection"
$TemplatePath = Join-Path $Root "templates\editorial.tex"
$AssetsPath = Join-Path $Root "assets"

if (-not (Test-Path $SourcePath)) {
    Write-Error "The $Collection '$Name' does not exist in '$SourcePath'."
    exit 1
}

if (-not (Test-Path $OutputPath)) {
    New-Item -ItemType Directory -Path $OutputPath | Out-Null
}

$InputFile = Join-Path $SourcePath "index.md"
$OutputFile = Join-Path $OutputPath "$Name.pdf"

Write-Host "Compiling '$Name' from $Collection..." -ForegroundColor Cyan

# Check dependencies
if (-not (Get-Command "pandoc" -ErrorAction SilentlyContinue)) {
    Write-Error "Pandoc is not installed or not in the PATH."
    exit 1
}

$PandocArgs = @(
    "$InputFile",
    "-o", "$OutputFile",
    "--from", "markdown+emoji",
    "--template", "$TemplatePath",
    "--resource-path", "$SourcePath;$AssetsPath",
    "--syntax-highlighting", "kate", # Using a standard style instead of pygments/idiomatic to be safe, or just follow recommendation? 
    # The warning said Use --syntax-highlighting=idiomatic instead of --listings.
    # So I will use that.
    "--syntax-highlighting", "idiomatic", 
    "--table-of-contents"
)

# Run Pandoc
pandoc $PandocArgs

if ($LASTEXITCODE -eq 0) {
    Write-Host "PDF generated successfully: $OutputFile" -ForegroundColor Green
}
else {
    Write-Error "Error generating PDF."
}
