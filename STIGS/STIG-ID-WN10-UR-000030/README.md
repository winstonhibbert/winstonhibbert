<h2>The Back up files and directories user right must only be assigned to the Administrators group.</h2>
<p><strong>STIG ID:</strong> WN10-UR-000030  |  <strong>SRG:</strong> SRG-OS-000324-GPOS-00125 |  <strong>Severity:</strong> Medium |  <strong>CCI:</strong> CCI-002235 |  <strong>Vulnerability ID:</strong> V-220960</p>

<h3>Vulnerability Discussion</h3>
<p>Inappropriate granting of user rights can provide system, administrative, and other high-level capabilities.</p>
<p>Accounts with the "Back up files and directories" user right can circumvent file and directory permissions and could allow access to sensitive data.</p>

<h3>Check</h3>
<p>Verify the effective setting in Local Group Policy Editor.</p>
<p>Run <code>gpedit.msc</code>.</p>

<p>Navigate to:</p>
<ul>
<li><strong>Local Computer Policy</strong> >> <strong>Computer Configuration</strong> >> <strong>Windows Settings</strong> >> <strong>Security Settings</strong> >> <strong>Local Policies</strong> >> <strong>User Rights Assignment</strong>.</li>
</ul>

<p>If any groups or accounts other than the following are granted the "Back up files and directories" user right, this is a finding:</p>
<ul>
<li>Administrators</li>
</ul>

<h3>Reference:</h3>
https://stigaview.com/products/win10/v3r1/WN10-UR-000030/
