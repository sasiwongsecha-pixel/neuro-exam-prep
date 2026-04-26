$repo = "C:\Users\kanga\OneDrive\Documents\Claude\Projects\Long case Exam"
$file = "neuro_exam_prep_responsive.html"

Write-Host "=== Git Fix & Push ===" -ForegroundColor Cyan

# Step 1: Remove lock files
$locks = @("index.lock","HEAD.lock","COMMIT_EDITMSG.lock","config.lock")
foreach ($lock in $locks) {
    $path = Join-Path "$repo\.git" $lock
    if (Test-Path $path) {
        Remove-Item $path -Force
        Write-Host "Removed $lock" -ForegroundColor Yellow
    }
}

# Step 2: Reset any staged changes (undo staged deletions)
Write-Host "`nResetting staged changes..." -ForegroundColor Cyan
& git -C $repo reset HEAD 2>&1 | Write-Host

# Step 3: Stage only the HTML file
Write-Host "`nStaging $file..." -ForegroundColor Cyan
& git -C $repo add $file 2>&1 | Write-Host

# Step 4: Check status
$status = & git -C $repo status --short 2>&1
Write-Host "`nCurrent status:" -ForegroundColor Cyan
$status | Write-Host

# Step 5: Commit
$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm"
Write-Host "`nCommitting..." -ForegroundColor Cyan
& git -C $repo commit -m "Fix: animation buttons and tab switching ($timestamp)" 2>&1 | Write-Host

# Step 6: Push
Write-Host "`nPushing to GitHub..." -ForegroundColor Cyan
& git -C $repo push 2>&1 | Write-Host

if ($LASTEXITCODE -eq 0) {
    Write-Host "`nSUCCESS! Site will update in ~1 minute." -ForegroundColor Green
    Write-Host "https://sasiwongsecha-pixel.github.io/neuro-exam-prep/neuro_exam_prep_responsive.html"
} else {
    Write-Host "`nPush failed. Try opening GitHub Desktop and pushing from there." -ForegroundColor Red
}

Write-Host "`nPress any key to exit..."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
