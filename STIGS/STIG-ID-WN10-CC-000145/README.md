<h2>Users must be prompted for a password on resume from sleep (on battery).</h2>
<p><strong>STIG ID:</strong> WN10-CC-000145  |  <strong>SRG:</strong> SRG-OS-000373-GPOS-00156 |  <strong>Severity:</strong> Medium |  <strong>CCI:</strong> CCI-004895 |  <strong>Vulnerability ID:</strong> V-220821</p>

<h3>Vulnerability Discussion</h3>
<p>Authentication must always be required when accessing a system. This setting ensures the user is prompted for a password on resume from sleep (on battery).</p>

<h3>Check</h3>
<p>If the following registry value does not exist or is not configured as specified, this is a finding:</p>

<h4>Registry Hive:</h4>
<p>HKEY_LOCAL_MACHINE</p>

<h4>Registry Path:</h4>
<p>\SOFTWARE\Policies\Microsoft\Power\PowerSettings\0e796bdb-100d-47d6-a2d5-f7d2daa51f51\</p>

<h4>Value Name:</h4>
<p>DCSettingIndex</p>

<h4>Value Type:</h4>
<p>REG_DWORD</p>

<h4>Value Data:</h4>
<p>1</p>

<h3>Reference:</h3>
https://stigaview.com/products/win10/v3r1/WN10-CC-000145/
