@echo off
cd /d "%~dp0"
echo Running SUSHI compilation...
call npx fsh-sushi .
echo Done.
pause
