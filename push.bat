@echo off

set name=%~1
set branch=%~2

if "%name%" == "" (
    set name=base
)

if NOT "%branch%" == "" (
    git checkout "%branch%"
) else (
    set branch=main
)

git add *
git commit -m "%name%"
git push origin "%branch%"