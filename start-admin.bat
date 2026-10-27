@echo off
title Decap CMS Local Server
echo ========================================================
echo  Starting Decap CMS Local Backend and Website Server
echo ========================================================
echo.
start "Decap CMS Local Backend (Port 8081)" cmd /k "npx decap-server"
start "Website Server (Port 3000)" cmd /k "npx serve -l 3000"
echo.
echo Waiting 3 seconds for servers to start...
timeout /t 3 /nobreak >nul
echo.
echo Opening Admin Dashboard in browser: http://localhost:3000/admin/
start http://localhost:3000/admin/
echo.
echo Done! Keep the two command windows open while testing.
echo To stop testing, simply close those command windows.
