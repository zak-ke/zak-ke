@echo off
cd /d E:\mysite\mysite
echo Building site...
hugo -D

echo Committing and pushing...
git add .
set /p msg=Commit message (Enter 直接用 "update"): 
if "%msg%"=="" set msg=update
git commit -m "%msg%"
git push

echo Done! Your site will be updated soon at:
echo https://zak-ke.github.io/zak-ke/
pause
