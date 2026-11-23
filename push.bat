@echo off
set "PATH=%LOCALAPPDATA%\Programs\Git\cmd;%LOCALAPPDATA%\Programs\Git\ucrt64\bin;%PATH%"
cd /d "%~dp0"
echo ========================================================
echo Pushing Secure-GPT to https://github.com/Amu123av/SecureGPT
echo ========================================================
echo.
git push -u origin main
echo.
pause
