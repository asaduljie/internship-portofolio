@echo off
chcp 65001 >nul
echo ========================================================
echo   UPLOAD GITHUB PROFILE README KE asaduljie/asaduljie
echo ========================================================
echo.
echo Pastikan Anda sudah membuat repository di browser:
echo https://github.com/new
echo dengan nama Repository: asaduljie (Public)
echo.
pause

cd /d "%~dp0"
if not exist .git (
    git init
    git branch -M main
    git remote add origin https://github.com/asaduljie/asaduljie.git
)

git add README.md
git commit -m "feat: setup official GitHub profile portfolio"
git push -u origin main --force

echo.
echo ========================================================
echo   SELESAI! Silakan buka https://github.com/asaduljie
echo ========================================================
pause
