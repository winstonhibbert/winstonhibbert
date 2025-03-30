 <#
.SYNOPSIS
    This PowerShell script ensures that the built-in guest account is set to be disabled.

.NOTES
    Author          : Winston Hibbert
    LinkedIn        : www.linkedin.com/in/winston-hibbert-262a44271
    GitHub          : ghttps://github.com/winstonhibbert
    Date Created    : 2025-29-03
    Last Modified   : 2025-29-03
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-AU-000500

.TESTED ON
    Date(s) Tested  : 2025-29-03
    Tested By       : Winston Hibbert
    Systems Tested  : Win 10
    PowerShell Ver. : 

.USAGE
    Example syntax:
    PS C:\> .\STIG-ID-WN10-SO-000010.ps1 
#>

# Check if the Guest account is disabled
$guestAccount = Get-LocalUser -Name "Guest"

if ($guestAccount.Enabled -eq $false) {
    Write-Host "Guest account is already disabled."
} else {
    Write-Host "Guest account is enabled. Disabling now..."
    
    # Disable the Guest account
    Disable-LocalUser -Name "Guest"

    # Verify the change
    $guestAccount = Get-LocalUser -Name "Guest"
    if ($guestAccount.Enabled -eq $false) {
        Write-Host "Guest account has been successfully disabled."
    } else {
        Write-Host "Failed to disable the Guest account."
    }
}
