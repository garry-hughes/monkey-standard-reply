#!/usr/bin/env python3
# Monkey ASCII Art - Plain Version
# Displays ASCII art with random color changes every 0.1 seconds

import os
import random
import time
import sys

# Define ANSI color codes
colors = [
    '\033[30m',  # Black
    '\033[34m',  # Blue
    '\033[32m',  # Green
    '\033[36m',  # Cyan
    '\033[31m',  # Red
    '\033[35m',  # Magenta
    '\033[33m',  # Yellow
    '\033[37m',  # White
    '\033[90m',  # Bright Black (Gray)
    '\033[94m',  # Bright Blue
    '\033[92m',  # Bright Green
    '\033[96m',  # Bright Cyan
    '\033[91m',  # Bright Red
    '\033[95m',  # Bright Magenta
    '\033[93m',  # Bright Yellow
    '\033[97m',  # Bright White
]

# ANSI reset code
reset = '\033[0m'

# ASCII art lines
art_lines = [
    '     _                         _',
    '    |_|                       |_|',
    '    | |         /^^^\\         | |',
    '   _| |_      (| "o" |)      _| |_',
    ' _| | | | _    (_---_)    _ | | | |_',
    '| | | | |\' |    _| |_    | `| | | | |',
    '\\          /   /     \\   \\          /',
    ' \\        /  / /(. .)\\  \\  \\        /',
    '   \\    /  / /  | . |  \\ \\  \\    /',
    '     \\  \\/ /    ||Y||    \\ \\/  /',
    '       \\_/      || ||      \\_/',
    '                () ()',
    '                || ||',
    '               ooO Ooo'
]

# Infinite loop
try:
    while True:
        # Clear the console
        os.system('clear' if os.name == 'posix' else 'cls')
        
        # Select a random color
        color = random.choice(colors)
        
        # Display the ASCII art
        for line in art_lines:
            print(f"{color}{line}{reset}")
        
        # Wait 0.1 seconds before next iteration
        time.sleep(0.1)
except KeyboardInterrupt:
    # Clean exit on Ctrl+C
    print(f"\n{reset}")
    sys.exit(0)
