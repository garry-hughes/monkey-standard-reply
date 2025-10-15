# Monkey ASCII Art - Obfuscated Version
# Displays ASCII art with random color changes every 0.1 seconds
# ASCII art is stored in an obfuscated format

# Define available colors for PowerShell
$colors = @(
    'Black', 'DarkBlue', 'DarkGreen', 'DarkCyan', 'DarkRed', 'DarkMagenta', 
    'DarkYellow', 'Gray', 'DarkGray', 'Blue', 'Green', 'Cyan', 'Red', 
    'Magenta', 'Yellow', 'White'
)

# Obfuscated ASCII art (Base64 encoded lines)
$obfuscatedArt = @(
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
)

# Infinite loop
while ($true) {
    # Clear the console
    Clear-Host
    
    # Select a random color
    $color = $colors | Get-Random
    
    # Decode and display each line of ASCII art
    foreach ($line in $obfuscatedArt) {
        $decodedLine = [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($line))
        Write-Host $decodedLine -ForegroundColor $color
    }
    
    # Wait 0.1 seconds before next iteration
    Start-Sleep -Milliseconds 100
}
