# ============================================================
# auto-push.ps1 — Neuro Exam Prep Auto-Push to GitHub
# Checks for changes every run; commits & pushes if found.
# Designed to be run by Windows Task Scheduler.
# ============================================================

$repoPath  = "C:\Users\kanga\OneDrive\Documents\Claude\Projects\Long case Exam"
$logFile   = "$repoPath\auto-push.log"
$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

function Log($msg) {
    $line = "[$timestamp] $msg"
    Write-Host $line
    Add-Content -Path $logFile -Value $line -Encoding UTF8
}

# Check for HTML changes — redirect stderr to null to avoid credential-helper noise
$status = (& git -C $repoPath status --porcelain -- "*.html") 2>$null

if ($status) {
    $changed = ($status | ForEach-Object { $_.Trim() }) -join ", "
    Log "Changes detected: $changed"

    & git -C $repoPath add "*.html" 2>$null

    $commitOut = (& git -C $repoPath commit -m "Auto-update: $timestamp") 2>$null
    Log $commitOut

    (& git -C $repoPath push origin main) 2>$null
    if ($LASTEXITCODE -eq 0) {
        Log "SUCCESS - pushed to GitHub. Site updates in ~1 min."
    } else {
        Log "PUSH FAILED - check auto-push.log and git credentials."
    }
} else {
    Log "No changes - nothing to push."
}
