# monkey-standard-reply
my standard monkey reply

## ASCII Art Scripts

This repository contains scripts in multiple languages that display ASCII art of a monkey with continuously changing random colors.

### Scripts

#### PowerShell
1. **monkey-plain.ps1** - ASCII art displayed in plain text format
2. **monkey-obfuscated.ps1** - ASCII art stored in Base64 encoded (obfuscated) format

#### Python
3. **monkey-plain.py** - ASCII art displayed in plain text format
4. **monkey-obfuscated.py** - ASCII art stored in Base64 encoded (obfuscated) format

#### Bash
5. **monkey-plain.sh** - ASCII art displayed in plain text format
6. **monkey-obfuscated.sh** - ASCII art stored in Base64 encoded (obfuscated) format

#### Batch (Windows)
7. **monkey-plain.bat** - ASCII art displayed in plain text format
8. **monkey-obfuscated.bat** - ASCII art with obfuscation (stored as variables)

### Features

- Displays ASCII art of a monkey
- Runs in an infinite loop
- Changes colors randomly every 0.1 seconds (100 milliseconds)
- Uses the platform's native color support

### Usage

#### PowerShell
Run either script using PowerShell:

```powershell
# Run the plain version
.\monkey-plain.ps1

# Run the obfuscated version
.\monkey-obfuscated.ps1
```

#### Python
Run either script using Python 3:

```bash
# Run the plain version
python3 monkey-plain.py
# or
./monkey-plain.py

# Run the obfuscated version
python3 monkey-obfuscated.py
# or
./monkey-obfuscated.py
```

#### Bash
Run either script using Bash:

```bash
# Run the plain version
bash monkey-plain.sh
# or
./monkey-plain.sh

# Run the obfuscated version
bash monkey-obfuscated.sh
# or
./monkey-obfuscated.sh
```

#### Batch (Windows)
Run either script by double-clicking or from Command Prompt:

```batch
REM Run the plain version
monkey-plain.bat

REM Run the obfuscated version
monkey-obfuscated.bat
```

**Note:** The scripts run in an infinite loop. Press `Ctrl+C` to stop them.

### Requirements

- **PowerShell**: PowerShell 5.1 or higher (Windows PowerShell or PowerShell Core)
- **Python**: Python 3.x
- **Bash**: Bash shell (Linux, macOS, WSL, Git Bash, etc.)
- **Batch**: Windows Command Prompt or PowerShell
