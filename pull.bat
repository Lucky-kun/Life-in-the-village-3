@echo off

set branch=%~1

if "%branch%" == "" (
    set branch=main
)

git pull origin "%branch%"