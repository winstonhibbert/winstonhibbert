 <#
.SYNOPSIS
    The machine inactivity limit must be set to 15 minutes, locking the system with the screensaver.

.NOTES
    Author          : Winston Hibbert
    LinkedIn        : www.linkedin.com/in/winston-hibbert-262a44271
    GitHub          : ghttps://github.com/winstonhibbert
    Date Created    : 2025-03-04
    Last Modified   : 2025-03-04
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-SO-000070

.TESTED ON
    Date(s) Tested  : 2025-03-04
    Tested By       : Winston Hibbert
    Systems Tested  : Win 10
    PowerShell Ver. : 

.USAGE
    Example syntax:
    PS C:\> .\STIG-ID-WN10-SO-000070.ps1
#>

# PowerShell script to set machine inactivity limit to 15 minutes (900 seconds)

$RegistryPath = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System"
$RegistryValueName = "InactivityTimeoutSecs"
$RegistryValue = 900

# Ensure the registry path exists
if (-not (Test-Path -Path $RegistryPath)) {
    Write-Host "Creating registry path: $RegistryPath"
    New-Item -Path $RegistryPath -Force | Out-Null
}

# Set or update the registry value
if ((Get-ItemProperty -Path $RegistryPath -Name $RegistryValueName -ErrorAction SilentlyContinue).$RegistryValueName -ne $RegistryValue) {
    Write-Host "Setting $RegistryValueName to $RegistryValue seconds"
    Set-ItemProperty -Path $RegistryPath -Name $RegistryValueName -Value $RegistryValue -PropertyType DWord -Force
} else {
    Write-Host "$RegistryValueName is already set to $RegistryValue seconds"
}

Write-Host "Machine inactivity limit has been successfully configured to 15 minutes."
