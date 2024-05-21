# Enhanced SCPT Versus - Launch Game by Joshhhuaaa
# This script automates the process of mounting the disc image and launching SCPT Versus.
# The disc image will be automatically unmounted upon closing the game.

# Hide PowerShell console while game is running
Add-Type -Name Window -Namespace Console -MemberDefinition '
[DllImport("Kernel32.dll")]
public static extern IntPtr GetConsoleWindow();

[DllImport("user32.dll")]
public static extern bool ShowWindow(IntPtr hWnd, Int32 nCmdShow);
'

function Hide-Console
{
    $consolePtr = [Console.Window]::GetConsoleWindow()
    [Console.Window]::ShowWindow($consolePtr, 0)
}
Hide-Console

# Paths
$scriptPath = Split-Path -Parent $MyInvocation.MyCommand.Definition
$parentPath = Split-Path (Split-Path (Split-Path $scriptPath -Parent) -Parent) -Parent
$isoPath = Join-Path -Path $scriptPath -ChildPath "Mount.iso"
$exePath = Join-Path -Path $parentPath -ChildPath "System/shadowstrike_static_retail.exe"

# Mount Disc
$diskImage = Mount-DiskImage -ImagePath $isoPath -PassThru

# Launch Game
$gameProcess = Start-Process -FilePath $exePath -PassThru

# Unmount Disc
$gameProcess.WaitForExit()
Dismount-DiskImage -ImagePath $isoPath
