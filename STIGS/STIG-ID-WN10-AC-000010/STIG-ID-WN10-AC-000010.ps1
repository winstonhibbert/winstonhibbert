 <#
.SYNOPSIS
    The number of allowed bad logon attempts must be configured to 3 or less.

.NOTES
    Author          : Winston Hibbert
    LinkedIn        : www.linkedin.com/in/winston-hibbert-262a44271
    GitHub          : ghttps://github.com/winstonhibbert
    Date Created    : 2025-31-03
    Last Modified   : 2025-31-03
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-AC-000010

.TESTED ON
    Date(s) Tested  : 2025-31-03
    Tested By       : Winston Hibbert
    Systems Tested  : Win 10
    PowerShell Ver. : 

.USAGE
    Example syntax:
    PS C:\> .\STIG-ID-WN10-AC-000010.ps1 
#>

# PowerShell script to set the account lockout threshold to 3 attempts

$LockoutThreshold = 3

# Get the current lockout threshold setting
$CurrentThreshold = (Get-LocalUser -Name "Administrator").LockoutThreshold

if ($CurrentThreshold -eq 0 -or $CurrentThreshold -gt $LockoutThreshold) {
    Write-Host "Updating account lockout threshold to $LockoutThreshold..."
    secedit /export /cfg $env:TEMP\secpol.cfg | Out-Null
    (Get-Content "$env:TEMP\secpol.cfg") -replace "LockoutBadCount = \d+", "LockoutBadCount = $LockoutThreshold" | Set-Content "$env:TEMP\secpol.cfg"
    secedit /configure /db $env:TEMP\secedit.sdb /cfg "$env:TEMP\secpol.cfg" /areas SECURITYPOLICY | Out-Null
    Write-Host "Account lockout threshold has been set to $LockoutThreshold."
} else {
    Write-Host "Account lockout threshold is already set correctly."
}
