 <#
.SYNOPSIS
    Accounts must be configured to require password expiration.

.NOTES
    Author          : Winston Hibbert
    LinkedIn        : www.linkedin.com/in/winston-hibbert-262a44271
    GitHub          : ghttps://github.com/winstonhibbert
    Date Created    : 2025-29-03
    Last Modified   : 2025-29-03
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-00-000090

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Example syntax:
    PS C:\> .\STIG-ID-WN10-00-000090.ps1
#>

# Get all local users
$Users = Get-LocalUser

foreach ($User in $Users) {
    if ($User.PasswordNeverExpires -eq $true) {
        Set-LocalUser -Name $User.Name -PasswordNeverExpires $false
        Write-Output "Fixed: Password expiration required for $($User.Name)"
    }
}

Write-Output "Remediation completed."
