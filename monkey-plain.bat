@echo off
REM Monkey ASCII Art - Plain Version
REM Displays ASCII art with random color changes every 0.1 seconds

setlocal enabledelayedexpansion

REM Define available colors for Windows CMD (color command format: background+foreground)
REM 0=Black 1=Blue 2=Green 3=Cyan 4=Red 5=Magenta 6=Yellow 7=White
REM 8=Gray 9=Light Blue A=Light Green B=Light Cyan C=Light Red D=Light Magenta E=Light Yellow F=Bright White
set "colors=01 02 03 04 05 06 07 09 0A 0B 0C 0D 0E 0F"

REM Infinite loop
:loop
    REM Clear the console
    cls
    
    REM Select a random color
    set /a "rand=!random! %% 14"
    set i=0
    for %%c in (%colors%) do (
        if !i! equ !rand! set "color=%%c"
        set /a i+=1
    )
    
    REM Set the color
    color !color!
    
    REM Display the ASCII art
    echo      _                         _
    echo     ^|_^|                       ^|_^|
    echo     ^| ^|         /^^^^\         ^| ^|
    echo    _^| ^|_      (^| "o" ^|)      _^| ^|_
    echo  _^| ^| ^| ^| _    (_---_)    _ ^| ^| ^| ^|_
    echo ^| ^| ^| ^| ^|' ^|    _^| ^|_    ^| `^| ^| ^| ^| ^|
    echo ^\          /   /     ^\   ^\          /
    echo  ^\        /  / /(. .)^\  ^\  ^\        /
    echo    ^\    /  / /  ^| . ^|  ^\ ^\  ^\    /
    echo      ^\  ^\/ /    ^|^|Y^|^|    ^\ ^\/  /
    echo        ^\_/      ^|^| ^|^|      ^\_/
    echo                 () ()
    echo                 ^|^| ^|^|
    echo                ooO Ooo
    
    REM Wait 0.1 seconds before next iteration (timeout in seconds, minimum is 1)
    REM Note: Windows timeout minimum is 1 second, using ping for sub-second delay
    ping 127.0.0.1 -n 1 -w 100 >nul
    
goto loop
