#!/bin/bash
# Monkey ASCII Art - Plain Version
# Displays ASCII art with random color changes every 0.1 seconds

# Define ANSI color codes
colors=(
    '\033[30m'  # Black
    '\033[34m'  # Blue
    '\033[32m'  # Green
    '\033[36m'  # Cyan
    '\033[31m'  # Red
    '\033[35m'  # Magenta
    '\033[33m'  # Yellow
    '\033[37m'  # White
    '\033[90m'  # Bright Black (Gray)
    '\033[94m'  # Bright Blue
    '\033[92m'  # Bright Green
    '\033[96m'  # Bright Cyan
    '\033[91m'  # Bright Red
    '\033[95m'  # Bright Magenta
    '\033[93m'  # Bright Yellow
    '\033[97m'  # Bright White
)

# ANSI reset code
reset='\033[0m'

# ASCII art lines
art_lines=(
    '     _                         _'
    '    |_|                       |_|'
    '    | |         /^^^\\         | |'
    '   _| |_      (| "o" |)      _| |_'
    ' _| | | | _    (_---_)    _ | | | |_'
    '| | | | |'\'' |    _| |_    | `| | | | |'
    '\\          /   /     \\   \\          /'
    ' \\        /  / /(. .)\\  \\  \\        /'
    '   \\    /  / /  | . |  \\ \\  \\    /'
    '     \\  \\/ /    ||Y||    \\ \\/  /'
    '       \\_/      || ||      \\_/'
    '                () ()'
    '                || ||'
    '               ooO Ooo'
)

# Trap Ctrl+C for clean exit
trap 'echo -e "\n${reset}"; exit 0' INT

# Infinite loop
while true; do
    # Clear the console
    clear
    
    # Select a random color
    color=${colors[$RANDOM % ${#colors[@]}]}
    
    # Display the ASCII art
    for line in "${art_lines[@]}"; do
        echo -e "${color}${line}${reset}"
    done
    
    # Wait 0.1 seconds before next iteration
    sleep 0.1
done
