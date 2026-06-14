param([int]$Port = 3000)

$here = $PSScriptRoot

$node = Get-Command node -ErrorAction SilentlyContinue
if (-not $node) {
    Write-Error "Node.js is required. Install from https://nodejs.org"
    exit 1
}

Write-Host ""
Write-Host "  Minima Bay — local preview"
Write-Host "  http://localhost:$Port"
Write-Host "  http://localhost:$Port/pool/"
Write-Host ""
Write-Host "  Ctrl+C to stop"
Write-Host ""

Push-Location $here
try {
    npx --yes http-server . -p $Port -c-1 --silent
} finally {
    Pop-Location
}
