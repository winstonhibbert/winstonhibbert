 <#
.SYNOPSIS
    Users must be prevented from changing installation options.

.NOTES
    Author          : Winston Hibbert
    LinkedIn        : www.linkedin.com/in/winston-hibbert-262a44271
    GitHub          : ghttps://github.com/winstonhibbert
    Date Created    : 2025-03-04
    Last Modified   : 2025-03-04
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-CC-000310

.TESTED ON
    Date(s) Tested  : 2025-03-04
    Tested By       : Winston Hibbert
    Systems Tested  : Win 10
    PowerShell Ver. : 

.USAGE
    Example syntax:
    PS C:\> .\STIG-ID-WN10-CC-000310.ps1
#>

# PowerShell script to disable user control over Windows Installer installs
$RegistryPath = "HKLM:\Software\Policies\Microsoft\Windows\Installer"
$RegistryValueName = "EnableUserControl"
$RegistryValue = 0

# Ensure the registry path exists
if (-not (Test-Path -Path $RegistryPath)) {
    Write-Host "Creating registry path: $RegistryPath"
    New-Item -Path $RegistryPath -Force | Out-Null
}

# Set or update the registry value
if ((Get-ItemProperty -Path $RegistryPath -Name $RegistryValueName -ErrorAction SilentlyContinue).$RegistryValueName -ne $RegistryValue) {
    Write-Host "Setting $RegistryValueName to $RegistryValue"
    Set-ItemProperty -Path $RegistryPath -Name $RegistryValueName -Value $RegistryValue
} else {
    Write-Host "$RegistryValueName is already set to $RegistryValue"
}

Write-Host "User control over installs has been successfully disabled."
