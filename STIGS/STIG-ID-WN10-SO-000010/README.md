<h1>The built-in guest account must be disabled.</h1>
<p><strong>STIG ID:</strong> WN10-SO-000010 | <strong>SRG:</strong> SRG-OS-000121-GPOS-00062 | <strong>Severity:</strong> Medium | <strong>CCI:</strong> CCI-000804 | <strong>Vulnerability Id:</strong> V-220909</p>

<h2>Vulnerability Discussion</h2>
<p>A system faces an increased vulnerability threat if the built-in guest account is not disabled. This account is a known account that exists on all Windows systems and cannot be deleted. This account is initialized during the installation of the operating system with no password assigned.</p>

<h2>Check</h2>
<p>Verify the effective setting in Local Group Policy Editor.</p>
<p>Run <code>gpedit.msc</code>.</p>
<p>Navigate to:</p>
<p><code>Local Computer Policy >> Computer Configuration >> Windows Settings >> Security Settings >> Local Policies >> Security Options.</code></p>
<p>If the value for <strong>"Accounts: Guest account status"</strong> is not set to <strong>"Disabled"</strong>, this is a finding.</p>

<h2>Fix</h2>
<p>Configure the policy value for:</p>
<p><code>Computer Configuration >> Windows Settings >> Security Settings >> Local Policies >> Security Options >> "Accounts: Guest account status"</code></p>
<p>Set it to <strong>"Disabled"</strong>.</p>
