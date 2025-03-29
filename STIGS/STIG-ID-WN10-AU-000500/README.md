<b>STIG-ID-WN10-AU-000500<b/>

Description (Vulnerability Discussion)
Inadequate log size will cause the log to fill up quickly.  This may prevent audit events from being recorded properly and require frequent attention by administrative personnel.

Solution
If the system is configured to send audit records directly to an audit server, this is NA.  This must be documented with the ISSO.

Configure the policy value for Computer Configuration >> Administrative Templates >> Windows Components >> Event Log Service >> Application >> 'Specify the maximum log file size (KB)' to 'Enabled' with a 'Maximum Log Size (KB)' of '32768' or greater.

Reference:
https://stigaview.com/products/win10/v3r1/WN10-AU-000500/
