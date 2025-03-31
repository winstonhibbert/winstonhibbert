<h2>Internet connection sharing must be disabled.</h2>
<p><strong>STIG ID:</strong> WN10-CC-000044  |  <strong>SRG:</strong> SRG-OS-000095-GPOS-00049 |  <strong>Severity:</strong> Medium |  <strong>CCI:</strong> CCI-000381 |  <strong>Vulnerability ID:</strong> V-220803</p>

<h3>Vulnerability Discussion</h3>
<p>Internet connection sharing makes it possible for an existing internet connection, such as through wireless, to be shared and used by other systems, essentially creating a mobile hotspot. This exposes the system sharing the connection to others with potentially malicious purposes.</p>

<h3>Check</h3>
<p>If the following registry value does not exist or is not configured as specified, this is a finding:</p>

<h4>Registry Hive:</h4>
<p>HKEY_LOCAL_MACHINE</p>

<h4>Registry Path:</h4>
<p>\SOFTWARE\Policies\Microsoft\Windows\Network Connections\</p>

<h4>Value Name:</h4>
<p>NC_ShowSharedAccessUI</p>

<h4>Value Type:</h4>
<p>REG_DWORD</p>

<h4>Value Data:</h4>
<p>0x00000000 (0)</p>

<h3>Reference:</h3>
https://stigaview.com/products/win10/v3r1/WN10-CC-000044/
