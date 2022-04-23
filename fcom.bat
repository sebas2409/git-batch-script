@echo off 
set visb=%1
if [%nombre%] == [] (
echo escribir fcom nombreRepo public/private
) else (
git init
git add .
git commit -m "first commit"
git branch -M main
gh repo create -s=. --%visb% --remote=origin --push)
