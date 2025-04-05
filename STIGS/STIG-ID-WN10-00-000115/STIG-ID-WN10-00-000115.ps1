 <#
.SYNOPSIS
    The Telnet Client must not be installed on the system.

.NOTES
    Author          : Winston Hibbert
    LinkedIn        : www.linkedin.com/in/winston-hibbert-262a44271
    GitHub          : ghttps://github.com/winstonhibbert
    Date Created    : 2025-04-04
    Last Modified   : 2025-04-04
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-00-000115

.TESTED ON
    Date(s) Tested  : 2025-04-04
    Tested By       : Winston Hibbert
    Systems Tested  : Win 10
    PowerShell Ver. : 

.USAGE
    Example syntax:
    PS C:\> .\STIG-ID-WN10-00-000115.ps1
#>

# PowerShell script to ensure Telnet Client is not installed

Write-Host "Checking for Telnet Client installation..."

$featureName = "TelnetClient"
$telnet = Get-WindowsOptionalFeature -Online -FeatureName $featureName

if ($telnet.State -eq "Enabled") {
    Write-Host "Telnet Client is currently installed. Uninstalling..."
    Disable-WindowsOptionalFeature -Online -FeatureName $featureName -NoRestart -ErrorAction Stop
    Write-Host "Telnet Client has been uninstalled successfully."
} elseif ($telnet.State -eq "Disabled") {
    Write-Host "Telnet Client is already uninstalled."
} else {
    Write-Warning "Unable to determine the Telnet Client installation state."
}
