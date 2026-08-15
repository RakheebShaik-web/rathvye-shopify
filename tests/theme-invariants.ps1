$ErrorActionPreference = 'Stop'

$themeRoot = Split-Path -Parent $PSScriptRoot
$productTemplate = Get-Content -Raw (Join-Path $themeRoot 'sections/main-product.liquid')
$productCard = Get-Content -Raw (Join-Path $themeRoot 'snippets/product-card.liquid')
$header = Get-Content -Raw (Join-Path $themeRoot 'sections/header.liquid')

$failures = [System.Collections.Generic.List[string]]::new()

if ($productTemplate -match '{{[^}]*product\.vendor') {
  $failures.Add('Product pages must not render the product vendor anywhere.')
}

if ($productCard -notmatch '\(hover:none\)\s+and\s+\(pointer:coarse\)') {
  $failures.Add('Product cards must disable layered hover imagery on touch devices.')
}

if ($productCard -notmatch 'catalog-card__media>\.catalog-card__image--secondary\{display:none!important\}') {
  $failures.Add('Secondary product-card images must be force-hidden on touch devices.')
}

if ($productCard -notmatch 'catalog-card__media>\.catalog-card__image--primary\{position:absolute;inset:0\}') {
  $failures.Add('The primary mobile product image must be pinned to the media frame.')
}

if ($header -notmatch '\.menu-toggle\{display:grid;width:44px;height:44px;[^}]*border:0!important') {
  $failures.Add('The mobile menu must retain a borderless 44px touch target.')
}

if ($failures.Count -gt 0) {
  $failures | ForEach-Object { Write-Error $_ }
  exit 1
}

Write-Output 'Theme invariants passed.'
