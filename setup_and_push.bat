@echo off
setlocal
title Secure-GPT GitHub Publisher

set "PATH=C:\Users\Aman Sharma\.gemini\antigravity\bin;%LOCALAPPDATA%\Programs\Git\cmd;%LOCALAPPDATA%\Programs\Git\ucrt64\bin;%PATH%"
cd /d "d:\Downloads\secure-gpt-v58.2"

echo ======================================================================
echo           SECURE-GPT: PUSH PROJECT TO GITHUB
echo ======================================================================
echo.
echo Step 1 of 2: Authorizing with GitHub...
echo A browser window will open. Click 'Authorize github' to continue.
echo.
gh auth login -h github.com -p https -w

if %errorlevel% neq 0 (
    echo.
    echo Authorization was cancelled or failed.
    echo Please run this script again or check your internet connection.
    pause
    exit /b %errorlevel%
)

echo.
echo Step 2 of 2: Pushing files and README to GitHub...
gh auth setup-git
git push -u origin main

if %errorlevel% equ 0 (
    echo.
    echo ======================================================================
    echo SUCCESS! All files and README have been pushed to:
    echo https://github.com/Amu123av/SecureGPT
    echo ======================================================================
) else (
    echo.
    echo Push failed. Please see the error message above.
)

echo.
pause
