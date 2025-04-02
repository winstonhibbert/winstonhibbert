 <#
.SYNOPSIS
    The minimum password age must be configured to at least 1 day.

.NOTES
    Author          : Winston Hibbert
    LinkedIn        : www.linkedin.com/in/winston-hibbert-262a44271
    GitHub          : ghttps://github.com/winstonhibbert
    Date Created    : 2025-01-04
    Last Modified   : 2025-01-04
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-AC-000030

.TESTED ON
    Date(s) Tested  : 2025-01-04
    Tested By       : Winston Hibbert
    Systems Tested  : Win 10
    PowerShell Ver. : 

.USAGE
    Example syntax:
    PS C:\> .\STIG-ID-WN10-AC-000030.ps1
#>

# PowerShell script to set the minimum password age to at least 1 day

$MinPasswordAge = 1

# Get the current minimum password age policy
$CurrentMinPasswordAge = (Get-LocalUser | Select-Object -First 1).PasswordMinimumAge

if ($CurrentMinPasswordAge -lt $MinPasswordAge) {
    Write-Host "Minimum password age is set to $CurrentMinPasswordAge days. Updating to $MinPasswordAge days."
    secedit /export /cfg C:\Windows\Temp\secpol.cfg

    # Modify the security policy configuration file
    (Get-Content C:\Windows\Temp\secpol.cfg) -replace "MinimumPasswordAge = \d+", "MinimumPasswordAge = $MinPasswordAge" | Set-Content C:\Windows\Temp\secpol.cfg

    # Apply the updated security policy
    secedit /configure /db c:\windows\security\local.sdb /cfg C:\Windows\Temp\secpol.cfg /areas SECURITYPOLICY
    gpupdate /force

    Write-Host "Minimum password age successfully updated to $MinPasswordAge day(s)."
} else {
    Write-Host "Minimum password age is already set to $CurrentMinPasswordAge day(s). No change needed."
}
