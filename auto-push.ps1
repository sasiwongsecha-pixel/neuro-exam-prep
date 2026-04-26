# ============================================================
# auto-push.ps1 — Neuro Exam Prep Auto-Push to GitHub
# Checks for changes every run; commits & pushes if found.
# Designed to be run by Windows Task Scheduler.
# ============================================================

$repoPath  = "C:\Users\kanga\OneDrive\Documents\Claude\Projects\Long case Exam"
$watchFile = "neuro_exam_prep_responsive.html"
$logFile   = "$repoPath\auto-push.log"
$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

function Log($msg) {
    $line = "[$timestamp] $msg"
    Write-Host $line
    Add-Content -Path $logFile -Value $line
}

# Check for changes
$status = & git -C $repoPath status --porcelain 2>&1

if ($status -match $watchFile) {
    Log "Changes detected in $watchFile — committing and pushing..."

    & git -C $repoPath add $watchFile 2>&1 | ForEach-Object { Log $_ }

    $commitMsg = "Auto-update: $timestamp"
    & git -C $repoPath commit -m $commitMsg 2>&1 | ForEach-Object { Log $_ }

    $pushResult = & git -C $repoPath push 2>&1
    $pushResult | ForEach-Object { Log $_ }

    if ($LASTEXITCODE -eq 0) {
        Log "SUCCESS — pushed to GitHub. Site will update in ~1 min."
    } else {
        Log "PUSH FAILED — check credentials or internet connection."
    }
} else {
    Log "No changes detected — nothing to push."
}
