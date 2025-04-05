 <#
.SYNOPSIS
    <h2>The Deny access to this computer from the network user right on workstations must be configured to prevent access from highly privileged domain accounts and local accounts on domain systems and unauthenticated access on all systems.</h2>

.NOTES
    Author          : Winston Hibbert
    LinkedIn        : www.linkedin.com/in/winston-hibbert-262a44271
    GitHub          : ghttps://github.com/winstonhibbert
    Date Created    : 2025-04-04
    Last Modified   : 2025-04-04
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-UR-000070

.TESTED ON
    Date(s) Tested  : 2025-04-04
    Tested By       : Winston Hibbert
    Systems Tested  : Win 10
    PowerShell Ver. : 

.USAGE
    Example syntax:
    PS C:\> .\STIG-ID-WN10-UR-000070.ps1
#>

# PowerShell script to configure "Deny access to this computer from the network" user right

$DenyLogonSIDList = @(
    "S-1-5-32-546"    # Guests
    # Add additional SIDs here if you want to include Domain Admins, Enterprise Admins, or Local Account
    # "S-1-5-21-domain-512" # Domain Admins (example SID, replace with actual)
    # "S-1-5-21-domain-519" # Enterprise Admins (example SID, replace with actual)
    # "S-1-5-113"           # Local account
)

$RightName = "SeDenyNetworkLogonRight"

function Set-UserRightAssignment {
    param (
        [string]$Right,
        [string[]]$SIDs
    )

    try {
        Write-Host "Setting user rights assignment: $Right"
        ntrights +r $Right -u "" | Out-Null
        foreach ($sid in $SIDs) {
            ntrights +r $Right -s $sid | Out-Null
        }
        Write-Host "User right $Right updated successfully."
    } catch {
        Write-Error "Failed to set user right $Right. $_"
    }
}

# Ensure ntrights.exe is available (part of Windows Server 2003 Resource Kit Tools)
if (-not (Get-Command "ntrights.exe" -ErrorAction SilentlyContinue)) {
    Write-Warning "ntrights.exe not found. Please install the Windows Server 2003 Resource Kit Tools."
} else {
    Set-UserRightAssignment -Right $RightName -SIDs $DenyLogonSIDList
}
