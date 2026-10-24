@echo off
title Push Yuva Career Platform to GitHub
color 0b
echo ================================================================
echo    YUVA CAREER PLATFORM - GITHUB AUTOMATIC SYNC & DEPLOY
echo ================================================================
echo.
set PATH=C:\Users\Admin\.tools\git\cmd;C:\Users\Admin\.tools\git\mingw64\bin;C:\Users\Admin\.tools\nodejs;%PATH%
cd /d "H:\YUVA CAREER\yuva-platform"

echo Configuring Git Credentials...
git config credential.helper manager
git branch -M main

echo.
echo Pushing project to https://github.com/swatipagare1155-web/yuva-afflet-testing-1...
echo (Agar browser window khule, to 'Sign in with browser' ya 'Authorize' par click karein)
echo.
git push -u origin main

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ================================================================
    echo   [SUCCESS] Code successfully pushed to GitHub!
    echo   Vercel is now automatically building and deploying your site.
    echo   Check your link in 1-2 minutes:
    echo   https://yuva-afflet-testing-1-qmxqq81id-tushar-004f.vercel.app
    echo ================================================================
) else (
    echo.
    echo [NOTICE] If prompt asked for credentials, please sign in.
)

echo.
pause
