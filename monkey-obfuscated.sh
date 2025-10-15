#!/bin/bash
# Monkey ASCII Art - Obfuscated Version
# Displays ASCII art with random color changes every 0.1 seconds
# ASCII art is stored in an obfuscated format

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

# Obfuscated ASCII art (Base64 encoded lines)
obfuscated_art=(
    'ICAgICBfICAgICAgICAgICAgICAgICAgICAgICAgIF8='
    'ICAgIHxffCAgICAgICAgICAgICAgICAgICAgICAgfF98'
    'ICAgIHwgfCAgICAgICAgIC9eXl5cICAgICAgICAgfCB8'
    'ICAgX3wgfF8gICAgICAofCAibyIgfCkgICAgICBffCB8Xw=='
    'IF98IHwgfCB8IF8gICAgKF8tLS1fKSAgICBfIHwgfCB8IHxf'
    'fCB8IHwgfCB8JyB8ICAgIF98IHxfICAgIHwgYHwgfCB8IHwgfA=='
    'XCAgICAgICAgICAvICAgLyAgICAgXCAgIFwgICAgICAgICAgLw=='
    'IFwgICAgICAgIC8gIC8gLyguIC4pXCBcICBcICAgICAgICAv'
    'ICAgXCAgICAvICAvIC8gIHwgLiB8ICBcIFwgIFwgICAgLw=='
    'ICAgICBcICBcLyAvICAgIHx8WXx8ICAgIFwgXC8gIC8='
    'ICAgICAgIFxfLyAgICAgIHx8IHx8ICAgICAgXF8v'
    'ICAgICAgICAgICAgICAgICgpICgp'
    'ICAgICAgICAgICAgICAgIHx8IHx8'
    'ICAgICAgICAgICAgICAgb29PIE9vbw=='
)

# Trap Ctrl+C for clean exit
trap 'echo -e "\n${reset}"; exit 0' INT

# Infinite loop
while true; do
    # Clear the console
    clear
    
    # Select a random color
    color=${colors[$RANDOM % ${#colors[@]}]}
    
    # Decode and display each line of ASCII art
    for line in "${obfuscated_art[@]}"; do
        decoded_line=$(echo "$line" | base64 -d)
        echo -e "${color}${decoded_line}${reset}"
    done
    
    # Wait 0.1 seconds before next iteration
    sleep 0.1
done
