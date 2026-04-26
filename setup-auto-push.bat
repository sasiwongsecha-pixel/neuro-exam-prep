@echo off
echo ============================================
echo  Setting up Auto-Push for Neuro Exam Prep
echo ============================================
echo.

set SCRIPT=C:\Users\kanga\OneDrive\Documents\Claude\Projects\Long case Exam\auto-push.ps1
set TASKNAME=NeuroExamPrepAutoPush

echo Registering Windows Task Scheduler task...
echo Task will run every 5 minutes silently in the background.
echo.

powershell -Command "& { $action = New-ScheduledTaskAction -Execute 'powershell.exe' -Argument '-ExecutionPolicy Bypass -WindowStyle Hidden -File \"%SCRIPT%\"'; $trigger = New-ScheduledTaskTrigger -RepetitionInterval (New-TimeSpan -Minutes 5) -Once -At (Get-Date); $settings = New-ScheduledTaskSettingsSet -ExecutionTimeLimit (New-TimeSpan -Minutes 2) -StartWhenAvailable $true; Register-ScheduledTask -TaskName '%TASKNAME%' -Action $action -Trigger $trigger -Settings $settings -Force | Out-Null; Write-Host 'Task registered successfully!' }"

echo.
echo ============================================
echo  DONE! Auto-push is now active.
echo  - Runs every 5 minutes
echo  - Only pushes when neuro_exam_prep_responsive.html changes
echo  - Check auto-push.log in this folder for activity
echo ============================================
echo.
pause
