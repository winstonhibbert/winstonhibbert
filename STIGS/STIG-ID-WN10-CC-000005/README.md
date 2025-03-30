<h2>Camera access from the lock screen must be disabled.</h2>
<p><strong>STIG ID:</strong> WN10-CC-000005  |  <strong>SRG:</strong> SRG-OS-000095-GPOS-00049 |  <strong>Severity:</strong> medium |  <strong>CCI:</strong> CCI-000381 |  <strong>Vulnerability Id:</strong> V-220792</p>

<h3>Vulnerability Discussion</h3>
<p>Enabling camera access from the lock screen could allow for unauthorized use. Requiring logon will ensure the device is only used by authorized personnel.</p>

<h3>Check</h3>
<p>If the device does not have a camera, this is NA.</p>
<p>If the following registry value does not exist or is not configured as specified, this is a finding.</p>

<h4>Registry Hive:</h4>
<p>HKEY_LOCAL_MACHINE</p>

<h4>Registry Path:</h4>
<p>\SOFTWARE\Policies\Microsoft\Windows\Personalization\</p>

<h4>Value Name:</h4>
<p>NoLockScreenCamera</p>

<h4>Value Type:</h4>
<p>REG_DWORD</p>

<h4>Value:</h4>
<p>1</p>

<h3>Reference:</h3>
https://stigaview.com/products/win10/v3r1/WN10-CC-000005/
