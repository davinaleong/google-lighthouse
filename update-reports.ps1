$ErrorActionPreference = "Stop"

$root = Split-Path -Parent $MyInvocation.MyCommand.Path

$files = Get-ChildItem -Path $root -File -Filter "*.html" |
  Where-Object { $_.Name -ne "index.html" } |
  Select-Object -ExpandProperty Name |
  Sort-Object

$json = $files | ConvertTo-Json
Set-Content -Path (Join-Path $root "reports.json") -Value $json -Encoding UTF8

Write-Host "Updated reports.json with $($files.Count) report(s)."
