 <#
.SYNOPSIS
    Internet connection sharing must be disabled.

.NOTES
    Author          : Winston Hibbert
    LinkedIn        : www.linkedin.com/in/winston-hibbert-262a44271
    GitHub          : ghttps://github.com/winstonhibbert
    Date Created    : 2025-31-03
    Last Modified   : 2025-31-03
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-CC-000044

.TESTED ON
    Date(s) Tested  : 2025-31-03
    Tested By       : Winston Hibbert
    Systems Tested  : Win 10
    PowerShell Ver. : 

.USAGE
    Example syntax:
    PS C:\> .\STIG-ID-WN10-CC-000044.ps1
#>

# PowerShell script to disable Internet Connection Sharing

$RegistryPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Network Connections"
$RegistryValueName = "NC_ShowSharedAccessUI"
$RegistryValue = 0

# Check if the registry path exists, if not, create it
if (-not (Test-Path -Path $RegistryPath)) {
    Write-Host "Registry path not found. Creating path: $RegistryPath"
    New-Item -Path $RegistryPath -Force
}

# Check if the registry value exists and if it needs to be updated
if (Test-Path "$RegistryPath\$RegistryValueName") {
    $currentValue = Get-ItemProperty -Path $RegistryPath -Name $RegistryValueName
    if ($currentValue.$RegistryValueName -ne $RegistryValue) {
        Write-Host "Registry value exists but is not set correctly. Updating value to $RegistryValue"
        Set-ItemProperty -Path $RegistryPath -Name $RegistryValueName -Value $RegistryValue
    } else {
        Write-Host "Registry value is already set to $RegistryValue"
    }
} else {
    Write-Host "Registry value not found. Creating value: $RegistryValueName with $RegistryValue"
    New-ItemProperty -Path $RegistryPath -Name $RegistryValueName -Value $RegistryValue -PropertyType DWord -Force
}

Write-Host "Internet Connection Sharing has been disabled successfully."
