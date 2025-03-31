<h2>The number of allowed bad logon attempts must be configured to 3 or less.</h2>
<p><strong>STIG ID:</strong> WN10-AC-000010  |  <strong>SRG:</strong> SRG-OS-000021-GPOS-00005 |  <strong>Severity:</strong> Medium |  <strong>CCI:</strong> CCI-000044 |  <strong>Vulnerability ID:</strong> V-220740</p>

<h3>Vulnerability Discussion</h3>
<p>The account lockout feature, when enabled, prevents brute-force password attacks on the system. The higher this value is, the less effective the account lockout feature will be in protecting the local system. The number of bad logon attempts must be reasonably small to minimize the possibility of a successful password attack, while allowing for honest errors made during a normal user logon.</p>

<h3>Check</h3>
<p>Verify the effective setting in Local Group Policy Editor.</p>
<p>Run <code>gpedit.msc</code>.</p>

<p>Navigate to:</p>
<ul>
<li><strong>Local Computer Policy</strong> >> <strong>Computer Configuration</strong> >> <strong>Windows Settings</strong> >> <strong>Security Settings</strong> >> <strong>Account Policies</strong> >> <strong>Account Lockout Policy</strong>.</li>
</ul>

<p>If the "Account lockout threshold" is "0" or more than "3" attempts, this is a finding.</p>

<h3>Refernce:</h3>
https://stigaview.com/products/win10/v3r1/WN10-AC-000010/
