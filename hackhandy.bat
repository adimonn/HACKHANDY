@echo off
color 0a
chcp 65001 >nul
title The HackHandy - By adimonn
rem set /p pass="Enter Password: "
rem if "%pass%" NEQ "adi" exit
:menu
echo.
echo [38;5;21m░▒▓█▓▒░░▒▓█▓▒░░▒▓██████▓▒░ ░▒▓██████▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓██████▓▒░░▒▓███████▓▒░░▒▓███████▓▒░░▒▓█▓▒░░▒▓█▓▒░[0m
echo [38;5;27m░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░[0m
echo [38;5;57m░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░[0m
echo [38;5;93m░▒▓████████▓▒░▒▓████████▓▒░▒▓█▓▒░      ░▒▓███████▓▒░░▒▓████████▓▒░▒▓████████▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓██████▓▒░[0m
echo [38;5;129m░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░  ░▒▓█▓▒░[0m    
echo [38;5;161m░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░  ░▒▓█▓▒░[0m 
echo [38;5;196m░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓██████▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓███████▓▒░   ░▒▓█▓▒░[0m v2
echo.
echo       [32m***********************************************************************************************************[0m
echo                                               [32mDeveloped By adimonn[0m
echo                                            [32mhttps://adimonn.netlify.app[0m
echo                                          [32m"For Educational Purposes Only"[0m 
echo       [32m***********************************************************************************************************[0m
echo       [32m1) List Users on Computer[0m
echo       [32m2) Create a New User[0m
echo       [32m3) Change a User's Password[0m
echo       [32m4) Delete a User Account[0m
echo       [32m5) Exit The HackHandy[0m
echo       [32m***********************************************************************************************************[0m
echo       [32mEnter any number (1-5) to select:[0m
echo .
set /p input="> "

    if %input% EQU 1 (
        cls
        title List Users
        color 0a
        cls
        net user 
        pause
    cls
    goto menu
    )
if %input% EQU 2 (
    cls
    title Create a new User
    color 0a
    cls
    call :checkadmin
    set /p username="USERNAME: "
    set /p password="PASSWORD: "
    net user %user% %password% /add
    echo New user created with credentials:
    echo %user% : %password%
    pause
    cls
    goto menu
)

if %input% EQU 3 (
    cls
    title Change a User's Password
    color 0a
    call :checkadmin
    set /p username="TARGET USER: "
    set /p password="NEW PASSWORD: "
    net user %user% %password%
    pause
    cls
    goto menu
)
if %input% EQU 4 (
    cls
    title Delete a User
    color 0a
    cls
echo Sorry for the inconvinience but this feature is currently under development
    pause
    cls
    goto menu
)
if %input% EQU 5 exit

:checkadmin
cls
color 0a
net session >nul
if %errorlevel% NEQ 0 (
    cls
    echo.
    echo Restart the script and run it as adminstrator for using this command.
    pause
    exit
)
