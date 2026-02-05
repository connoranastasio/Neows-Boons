$path = "C:\Program Files (x86)\Steam\steamapps\common\SlayTheSpire\preferences\STSPlayer"

if (!(Test-Path -LiteralPath $path)) {
    Write-Host "ERROR: STSPlayer file not found at $path" -ForegroundColor Red
    Read-Host "Press Enter to exit"
    exit
}

# Read file as raw bytes to preserve encoding
$content = [System.IO.File]::ReadAllText($path)

Write-Host "Before changes:" -ForegroundColor Cyan
Write-Host $content

# Replace all spirit values from "0" to "1"
$content = $content -replace '"IRONCLAD_SPIRITS":\s*"0"', '"IRONCLAD_SPIRITS": "1"'
$content = $content -replace '"THE_SILENT_SPIRITS":\s*"0"', '"THE_SILENT_SPIRITS": "1"'
$content = $content -replace '"DEFECT_SPIRITS":\s*"0"', '"DEFECT_SPIRITS": "1"'
$content = $content -replace '"WATCHER_SPIRITS":\s*"0"', '"WATCHER_SPIRITS": "1"'

Write-Host "`nAfter changes:" -ForegroundColor Green
Write-Host $content

# Write back using UTF8 without BOM (important for game compatibility)
$utf8NoBom = New-Object System.Text.UTF8Encoding $false
[System.IO.File]::WriteAllText($path, $content, $utf8NoBom)

Write-Host "`nDone! All spirits set to 1." -ForegroundColor Green
Write-Host "Make sure Slay the Spire is NOT running when you run this script." -ForegroundColor Yellow
Read-Host "Press Enter to exit"
