The minimum password age must be configured to at least 1 day.</h2>
<p><strong>Description:</strong> Permitting passwords to be changed in immediate succession within the same day allows users to cycle passwords through their history database. This enables users to effectively negate the purpose of mandating periodic password changes.</p>

<h3>Solution</h3>
<p>Configure the policy value for:</p>
<ul>
<li><strong>Computer Configuration</strong> >> <strong>Windows Settings</strong> >> <strong>Security Settings</strong> >> <strong>Account Policies</strong> >> <strong>Password Policy</strong> >> <em>'Minimum Password Age'</em> to at least <strong>1</strong> day.</li>
</ul>

<h3>Policy Value:</h3>
<p>[1..4294967295]</p>
