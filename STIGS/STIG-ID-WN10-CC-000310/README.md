Users must be prevented from changing installation options</h2>
<p><strong>Description:</strong> Installation options for applications are typically controlled by administrators. This setting prevents users from changing installation options that may bypass security features.</p>

<h3>Solution</h3>
<p>Configure the policy value for:</p>
<ul>
<li><strong>Computer Configuration</strong> >> <strong>Administrative Templates</strong> >> <strong>Windows Components</strong> >> <strong>Windows Installer</strong> >> <em>'Allow user control over installs'</em> to <strong>Disabled</strong>.</li>
</ul>

<h3>Policy Value:</h3>
<p>0</p>
