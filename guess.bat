@echo off
title Guess the Number
set /a number=%random% %% 100 + 1
:guess
set /p guess=Guess the number (1-100): 
if %guess%==%number% (
    echo Correct! You win!
    goto end
)
if %guess% GTR %number% (
    echo Too high!
) else (
    echo Too low!
)
goto guess
:end
pause
