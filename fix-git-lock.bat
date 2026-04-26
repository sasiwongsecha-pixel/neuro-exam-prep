@echo off
echo Removing git lock files...
set REPO=C:\Users\kanga\OneDrive\Documents\Claude\Projects\Long case Exam

if exist "%REPO%\.git\index.lock" (
    del /f "%REPO%\.git\index.lock"
    echo Deleted index.lock
) else (
    echo index.lock not found
)

if exist "%REPO%\.git\HEAD.lock" (
    del /f "%REPO%\.git\HEAD.lock"
    echo Deleted HEAD.lock
) else (
    echo HEAD.lock not found
)

echo.
echo Done! You can now commit in GitHub Desktop.
pause
