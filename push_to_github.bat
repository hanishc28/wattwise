@echo off
set "PATH=%PATH%;C:\Users\Admin\AppData\Local\GitHubDesktop\app-3.6.7\resources\app\git\cmd"
echo ==============================================
echo WattWise - Pushing to GitHub (hanishc28/wattwise)
echo ==============================================
cd /d "C:\Users\Admin\wattwise"
git branch -M main
git push -u origin main
echo.
if %ERRORLEVEL% EQU 0 (
    echo ==============================================
    echo SUCCESS! Repository published to:
    echo https://github.com/hanishc28/wattwise
    echo ==============================================
) else (
    echo ==============================================
    echo Push paused. If prompted for GitHub login, please sign in.
    echo ==============================================
)
pause
