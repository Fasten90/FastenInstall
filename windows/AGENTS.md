# Windows setup helper

This folder contains Windows-only setup automation for installing prerequisites and developer tools.

## Entry point
- The main entry script is [install_all.ps1](install_all.ps1).
- Keep this as the primary entry point for the setup flow.

## What the flow does
- Checks whether Chocolatey is already available.
- Installs Chocolatey if it is missing via [chocolatey/install_chocolatey.ps1](chocolatey/install_chocolatey.ps1).
- Runs the tool installation flow via [chocolatey/install_tools_with_choco.ps1](chocolatey/install_tools_with_choco.ps1).

## Requirements
- Windows only.
- PowerShell available.
- Chocolatey is expected, but the script can bootstrap it.

## How to test
Run this from a Windows PowerShell terminal:

```powershell
Set-Location .\windows
powershell -ExecutionPolicy Bypass -File .\install_all.ps1
```

If you only want to validate syntax:

```powershell
powershell -NoProfile -Command "[System.Management.Automation.Language.Parser]::ParseFile('install_all.ps1', [ref]$null, [ref]$null) | Out-Null"
```

## Notes for agents
- Keep the scripts short and PowerShell-native.
- Preserve the current flow: check Chocolatey -> install if needed -> install tools.
- Do not turn this into a Linux or macOS style workflow.
