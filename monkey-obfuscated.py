#!/usr/bin/env python3
# Monkey ASCII Art - Obfuscated Version
# Displays ASCII art with random color changes every 0.1 seconds
# ASCII art is stored in an obfuscated format

import os
import random
import time
import sys
import base64

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

# Obfuscated ASCII art (Base64 encoded lines)
obfuscated_art = [
    'ICAgICBfICAgICAgICAgICAgICAgICAgICAgICAgIF8=',
    'ICAgIHxffCAgICAgICAgICAgICAgICAgICAgICAgfF98',
    'ICAgIHwgfCAgICAgICAgIC9eXl5cICAgICAgICAgfCB8',
    'ICAgX3wgfF8gICAgICAofCAibyIgfCkgICAgICBffCB8Xw==',
    'IF98IHwgfCB8IF8gICAgKF8tLS1fKSAgICBfIHwgfCB8IHxf',
    'fCB8IHwgfCB8JyB8ICAgIF98IHxfICAgIHwgYHwgfCB8IHwgfA==',
    'XCAgICAgICAgICAvICAgLyAgICAgXCAgIFwgICAgICAgICAgLw==',
    'IFwgICAgICAgIC8gIC8gLyguIC4pXCBcICBcICAgICAgICAv',
    'ICAgXCAgICAvICAvIC8gIHwgLiB8ICBcIFwgIFwgICAgLw==',
    'ICAgICBcICBcLyAvICAgIHx8WXx8ICAgIFwgXC8gIC8=',
    'ICAgICAgIFxfLyAgICAgIHx8IHx8ICAgICAgXF8v',
    'ICAgICAgICAgICAgICAgICgpICgp',
    'ICAgICAgICAgICAgICAgIHx8IHx8',
    'ICAgICAgICAgICAgICAgb29PIE9vbw=='
]

# Infinite loop
try:
    while True:
        # Clear the console
        os.system('clear' if os.name == 'posix' else 'cls')
        
        # Select a random color
        color = random.choice(colors)
        
        # Decode and display each line of ASCII art
        for line in obfuscated_art:
            decoded_line = base64.b64decode(line).decode('utf-8')
            print(f"{color}{decoded_line}{reset}")
        
        # Wait 0.1 seconds before next iteration
        time.sleep(0.1)
except KeyboardInterrupt:
    # Clean exit on Ctrl+C
    print(f"\n{reset}")
    sys.exit(0)
