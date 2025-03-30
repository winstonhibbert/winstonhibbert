<h1>The Application event log size must be configured to 32768 KB or greater.</h1>
<p><strong>STIG ID:</strong> WN10-AU-000500 | <strong>SRG:</strong> SRG-OS-000341-GPOS-00132 | <strong>Severity:</strong> Medium | <strong>CCI:</strong> CCI-001849 | <strong>Vulnerability Id:</strong> V-220779</p>

<h2>Vulnerability Discussion</h2>
<p>Inadequate log size will cause the log to fill up quickly. This may prevent audit events from being recorded properly and require frequent attention by administrative personnel.</p>

<h2>Check</h2>
<p>If the system is configured to send audit records directly to an audit server, this is NA. This must be documented with the ISSO.</p>
<p>If the following registry value does not exist or is not configured as specified, this is a finding:</p>

<p><strong>Registry Hive:</strong> HKEY_LOCAL_MACHINE</p>
<p><strong>Registry Path:</strong> \SOFTWARE\Policies\Microsoft\Windows\EventLog\Application\</p>
<p><strong>Value Name:</strong> MaxSize</p>
<p><strong>Value Type:</strong> REG_DWORD</p>
<p><strong>Value:</strong> 0x00008000 (32768) (or greater)</p>

<h3>Reference:</h3>
https://stigaview.com/products/win10/v3r1/WN10-AU-000500/
