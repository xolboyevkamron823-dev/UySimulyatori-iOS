@echo off
title GitHub ga Yuklash - Uy Simulyatori iOS
color 0b
echo =================================================================
echo       UY SIMULYATORI - GITHUB ACTIONS ORQALI .IPA YIG'ISH
echo =================================================================
echo.
echo 1. github.com saytiga kiring va yangi bosh repository oching (masalan: UySimulyatori-iOS).
echo 2. Osha repository linkini nusxalang (masalan: https://github.com/login/UySimulyatori-iOS.git)
echo.
set /p REPO_URL="GitHub Repository linkini shu yerga tashlang va Enter bosing: "
if "%REPO_URL%"=="" goto end

git remote remove origin 2>nul
git remote add origin %REPO_URL%
git branch -M main
git push -u origin main

echo.
echo =================================================================
echo Muvaffaqiyatli yuklandi!
echo Endi GitHub sahifangizdagi 'Actions' bo'limiga kiring.
echo Apple macOS buluti 2 daqiqada siz uchun haqiqiy .IPA faylini
echo yig'ib beradi va yuklab olishingiz mumkin bo'ladi!
echo =================================================================
pause
:end
