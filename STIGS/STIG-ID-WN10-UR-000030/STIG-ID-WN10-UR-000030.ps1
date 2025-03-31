 <#
.SYNOPSIS
    The Back up files and directories user right must only be assigned to the Administrators group.
    
.NOTES
    Author          : Winston Hibbert
    LinkedIn        : www.linkedin.com/in/winston-hibbert-262a44271
    GitHub          : ghttps://github.com/winstonhibbert
    Date Created    : 2025-31-03
    Last Modified   : 2025-31-03
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-UR-000030

.TESTED ON
    Date(s) Tested  : 2025-31-03
    Tested By       : Winston Hibbert
    Systems Tested  : Win 10
    PowerShell Ver. : 

.USAGE
    Example syntax:
    PS C:\> .\STIG-ID-WN10-UR-000030.ps1 
#>

# PowerShell script to ensure only Administrators have the "Back up files and directories" user right

$UserRight = "SeBackupPrivilege"
$AllowedGroup = "Administrators"

# Get current user right assignments
$CurrentAssignments = secedit /export /areas USER_RIGHTS /cfg $env:TEMP\secpol.cfg | Out-Null
$SecPolContent = Get-Content "$env:TEMP\secpol.cfg"

# Check if the user right is assigned to anyone other than Administrators
if ($SecPolContent -match "$UserRight = (.+)") {
    $AssignedUsers = $matches[1] -split ","
    
    # Remove all except Administrators
    $UpdatedUsers = $AssignedUsers | Where-Object { $_ -match $AllowedGroup }

    # If changes are needed, update the policy
    if ($UpdatedUsers -ne $AssignedUsers) {
        Write-Host "Updating user rights for $UserRight..."
        
        # Modify the security policy file
        $UpdatedSecPolContent = $SecPolContent -replace "$UserRight = .+", "$UserRight = *$AllowedGroup"
        $UpdatedSecPolContent | Set-Content "$env:TEMP\secpol.cfg"
        
        # Apply the updated security policy
        secedit /configure /db $env:TEMP\secedit.sdb /cfg "$env:TEMP\secpol.cfg" /areas USER_RIGHTS | Out-Null
        Write-Host "Successfully updated $UserRight to be restricted to $AllowedGroup only."
    } else {
        Write-Host "$UserRight is already correctly assigned to $AllowedGroup only."
    }
} else {
    Write-Host "No conflicting assignments found for $UserRight."
}
