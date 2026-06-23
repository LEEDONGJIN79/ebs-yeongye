@echo off
chcp 65001 >nul
cd /d "%~dp0"
title 2026 수능특강 연계 변형 문제
echo.
echo   ================================================
echo     2026 수능 특강 연계 변형 문제 - 앱 실행
echo   ================================================
echo.
echo   브라우저가 자동으로 열립니다.
echo   앱을 닫으려면 이 검은 창을 닫으세요.
echo.
where python >nul 2>nul
if %errorlevel%==0 (
  start "EBS app server" /min python -m http.server 8765
) else (
  start "EBS app server" /min py -m http.server 8765
)
timeout /t 2 >nul
start "" "http://localhost:8765/index.html"
echo   실행 중... (포트 8765)
echo.
pause >nul
