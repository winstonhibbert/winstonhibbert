 <#
.SYNOPSIS
    The system must be configured to audit Logon/Logoff - Account Lockout failures.

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
    PS C:\> .\STIG-ID-WN10-AU-000054.ps1 
#>

# Ensure the script runs with administrative privileges
$adminCheck = [System.Security.Principal.WindowsPrincipal] [System.Security.Principal.WindowsIdentity]::GetCurrent()
if (-not $adminCheck.IsInRole([System.Security.Principal.WindowsBuiltInRole] "Administrator")) {
    Write-Host "Please run this script as an Administrator."
    exit
}

# Enable detailed auditing subcategories override
Write-Host "Enabling detailed audit policy subcategories..."
auditpol /set /category:"System" /success:enable /failure:enable
auditpol /set /category:"Logon/Logoff" /success:enable /failure:enable

# Configure account lockout auditing
Write-Host "Configuring Account Lockout auditing..."
auditpol /set /subcategory:"Account Lockout" /failure:enable

# Verify configuration
Write-Host "Verifying settings..."
$auditConfig = auditpol /get /category:"Logon/Logoff"
if ($auditConfig -match "Account Lockout\s+\|\s+Failure") {
    Write-Host "Account Lockout auditing is properly configured."
} else {
    Write-Host "Failed to configure Account Lockout auditing."
}

Write-Host "Audit policy configuration completed."
