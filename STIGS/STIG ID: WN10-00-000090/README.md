<h1>Accounts must be configured to require password expiration.</h1>
<p><strong>STIG ID:</strong> WN10-00-000090 | <strong>SRG:</strong> SRG-OS-000076-GPOS-00044 | <strong>Severity:</strong> Medium | <strong>CCI:</strong> CCI-004066 | <strong>Vulnerability Id:</strong> V-220716</p>

<h2>Vulnerability Discussion</h2>
<p>Passwords that do not expire increase exposure with a greater probability of being discovered or cracked.</p>

<h2>Check</h2>
<p>Run <code>Computer Management</code>.</p>
<p>Navigate to:</p>
<p><code>System Tools >> Local Users and Groups >> Users</code></p>
<p>Double-click each active account.</p>
<p>If <strong>"Password never expires"</strong> is selected for any account, this is a finding.</p>

<h2>Reference</h2>
<p><a href="https://stigaview.com/products/win10/v3r1/WN10-00-000090/" target="_blank">STIG Reference Link</a></p>
