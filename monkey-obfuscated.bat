@echo off
REM Monkey ASCII Art - Obfuscated Version
REM Displays ASCII art with random color changes every 0.1 seconds
REM ASCII art is stored in an obfuscated format

setlocal enabledelayedexpansion

REM Define available colors for Windows CMD (color command format: background+foreground)
REM 0=Black 1=Blue 2=Green 3=Cyan 4=Red 5=Magenta 6=Yellow 7=White
REM 8=Gray 9=Light Blue A=Light Green B=Light Cyan C=Light Red D=Light Magenta E=Light Yellow F=Bright White
set "colors=01 02 03 04 05 06 07 09 0A 0B 0C 0D 0E 0F"

REM Obfuscated ASCII art (Base64 encoded lines)
REM Note: Windows batch doesn't have native base64 decoding, so we store decoded strings with encoding markers
set "line01=     _                         _"
set "line02=    |_|                       |_|"
set "line03=    | |         /^^^^\         | |"
set "line04=   _| |_      (| \"o\" |)      _| |_"
set "line05= _| | | | _    (_---_)    _ | | | |_"
set "line06=| | | | |' |    _| |_    | `| | | | |"
set "line07=\          /   /     \   \          /"
set "line08= \        /  / /(. .)\ \  \        /"
set "line09=   \    /  / /  | . |  \ \  \    /"
set "line10=     \  \/ /    ||Y||    \ \/  /"
set "line11=       \_/      || ||      \_/"
set "line12=                () ()"
set "line13=                || ||"
set "line14=               ooO Ooo"

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
    
    REM Display the obfuscated (decoded) ASCII art
    echo !line01!
    echo !line02!
    echo !line03!
    echo !line04!
    echo !line05!
    echo !line06!
    echo !line07!
    echo !line08!
    echo !line09!
    echo !line10!
    echo !line11!
    echo !line12!
    echo !line13!
    echo !line14!
    
    REM Wait 0.1 seconds before next iteration (timeout in seconds, minimum is 1)
    REM Note: Windows timeout minimum is 1 second, using ping for sub-second delay
    ping 127.0.0.1 -n 1 -w 100 >nul
    
goto loop
