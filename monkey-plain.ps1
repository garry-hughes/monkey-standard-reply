# Monkey ASCII Art - Plain Version
# Displays ASCII art with random color changes every 0.1 seconds

# Define available colors for PowerShell
$colors = @(
    'Black', 'DarkBlue', 'DarkGreen', 'DarkCyan', 'DarkRed', 'DarkMagenta', 
    'DarkYellow', 'Gray', 'DarkGray', 'Blue', 'Green', 'Cyan', 'Red', 
    'Magenta', 'Yellow', 'White'
)

# Infinite loop
while ($true) {
    # Clear the console
    Clear-Host
    
    # Select a random color
    $color = $colors | Get-Random
    
    # Display the ASCII art
    Write-Host "     _                         _" -ForegroundColor $color
    Write-Host "    |_|                       |_|" -ForegroundColor $color
    Write-Host "    | |         /^^^\         | |" -ForegroundColor $color
    Write-Host "   _| |_      (| `"o`" |)      _| |_" -ForegroundColor $color
    Write-Host " _| | | | _    (_---_)    _ | | | |_" -ForegroundColor $color
    Write-Host "| | | | |' |    _| |_    | `| | | | |" -ForegroundColor $color
    Write-Host "\          /   /     \   \          /" -ForegroundColor $color
    Write-Host " \        /  / /(. .)\ \  \        /" -ForegroundColor $color
    Write-Host "   \    /  / /  | . |  \ \  \    /" -ForegroundColor $color
    Write-Host "     \  \/ /    ||Y||    \ \/  /" -ForegroundColor $color
    Write-Host "       \_/      || ||      \_/" -ForegroundColor $color
    Write-Host "                () ()" -ForegroundColor $color
    Write-Host "                || ||" -ForegroundColor $color
    Write-Host "               ooO Ooo" -ForegroundColor $color
    
    # Wait 0.1 seconds before next iteration
    Start-Sleep -Milliseconds 100
}
