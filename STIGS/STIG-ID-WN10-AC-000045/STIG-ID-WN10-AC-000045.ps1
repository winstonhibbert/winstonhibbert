 <#
.SYNOPSIS
    Reversible password encryption must be disabled.

.NOTES
    Author          : Winston Hibbert
    LinkedIn        : www.linkedin.com/in/winston-hibbert-262a44271
    GitHub          : ghttps://github.com/winstonhibbert
    Date Created    : 2025-04-04
    Last Modified   : 2025-04-04
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-AC-000045

.TESTED ON
    Date(s) Tested  : 2025-04-04
    Tested By       : Winston Hibbert
    Systems Tested  : Win 10
    PowerShell Ver. : 

.USAGE
    Example syntax:
    PS C:\> .\STIG-ID-WN10-AC-000045.ps1
#>

# PowerShell script to disable storing passwords using reversible encryption

Write-Host "Disabling reversible password encryption policy..."

# Load secedit values
$seceditFile = "$env:TEMP\secedit.inf"
$logFile = "$env:TEMP\secedit.log"

@"
[Unicode]
Unicode=yes
[System Access]
ClearTextPassword = 0
"@ | Set-Content -Path $seceditFile -Encoding Unicode

# Apply the security template
secedit /configure /db secedit.sdb /cfg $seceditFile /log $logFile /quiet

if ($?) {
    Write-Host "Reversible password encryption has been disabled successfully."
} else {
    Write-Warning "Failed to apply the policy. Check $logFile for more information."
}
