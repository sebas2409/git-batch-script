@echo off 
set nombre=%1
set visb=%2
if [%nombre%] == [] (
echo escribir script nombreRepo public/private
) else (
git init
git add .
git commit -m "first commit"
git branch -M main
gh repo create -s=. --%visb% --remote=%nombre% --push)
