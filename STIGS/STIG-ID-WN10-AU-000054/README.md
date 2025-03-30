<h1>The system must be configured to audit Logon/Logoff - Account Lockout failures.</h1>
<p><strong>STIG ID:</strong> WN10-AU-000054 | <strong>SRG:</strong> SRG-OS-000470-GPOS-00214 | <strong>Severity:</strong> Medium | <strong>CCI:</strong> CCI-000172 | <strong>Vulnerability Id:</strong> V-220755</p>

<h2>Vulnerability Discussion</h2>
<p>Maintaining an audit trail of system activity logs can help identify configuration errors, troubleshoot service disruptions, and analyze compromises that have occurred, as well as detect attacks. Audit logs are necessary to provide a trail of evidence in case the system or network is compromised. Collecting this data is essential for analyzing the security of information assets and detecting signs of suspicious and unexpected behavior.</p>

<p>Account Lockout events can be used to identify potentially malicious logon attempts.</p>

<h2>Check</h2>
<p>Security Option <strong>"Audit: Force audit policy subcategory settings (Windows Vista or later) to override audit policy category settings"</strong> must be set to <strong>"Enabled"</strong> (WN10-SO-000030) for the detailed auditing subcategories to be effective.</p>

<p>Use the AuditPol tool to review the current Audit Policy configuration:</p>
<p>Open a Command Prompt with elevated privileges (<code>Run as Administrator</code>).</p>
<p>Enter:</p>
<p><code>AuditPol /get /category:*</code></p>

<p>Compare the AuditPol settings with the following. If the system does not audit the following, this is a finding:</p>
<p><strong>Logon/Logoff >> Account Lockout - Failure</strong></p>

<h2>Reference:</h2>
<p>https://stigaview.com/products/win10/v3r1/WN10-AU-000054/</p>
