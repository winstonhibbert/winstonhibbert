<h2>The convenience PIN for Windows 10 must be disabled.</h2>
<p><strong>STIG ID:</strong> WN10-CC-000370  |  <strong>SRG:</strong> SRG-OS-000095-GPOS-00049 |  <strong>Severity:</strong> Medium |  <strong>CCI:</strong> CCI-000381 |  <strong>Vulnerability ID:</strong> V-220870</p>

<h3>Vulnerability Discussion</h3>
<p>This policy controls whether a domain user can sign in using a convenience PIN to prevent enabling (Password Stuffer).</p>

<h3>Check</h3>
<p>If the following registry value does not exist or is not configured as specified, this is a finding.</p>

<h4>Registry Hive:</h4>
<p>HKEY_LOCAL_MACHINE</p>

<h4>Registry Path:</h4>
<p>\Software\Policies\Microsoft\Windows\System</p>

<h4>Value Name:</h4>
<p>AllowDomainPINLogon</p>

<h4>Value Type:</h4>
<p>REG_DWORD</p>

<h4>Value Data:</h4>
<p>0</p>

<h4>Reference:</h4>
https://stigaview.com/products/win10/v3r1/WN10-CC-000370/
