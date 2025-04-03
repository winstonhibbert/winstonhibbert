<h2>The machine inactivity limit must be set to 15 minutes, locking the system with the screensaver.</h2>
<p><strong>Description:</strong> Unattended systems are susceptible to unauthorized use and should be locked when unattended. The screen saver should be set at a maximum of 15 minutes and be password protected. This protects critical and sensitive data from exposure to unauthorized personnel with physical access to the computer.</p>

<h3>Solution</h3>
<p>Configure the policy value for:</p>
<ul>
<li><strong>Computer Configuration</strong> >> <strong>Windows Settings</strong> >> <strong>Security Settings</strong> >> <strong>Local Policies</strong> >> <strong>Security Options</strong> >> <em>'Interactive logon: Machine inactivity limit'</em> to <strong>900 seconds or less</strong>, excluding '0' which is effectively disabled.</li>
</ul>

<h3>Policy Value:</h3>
<p>[1..900]</p>
