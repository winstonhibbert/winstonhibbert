<h2>Users must not be allowed to ignore Windows Defender SmartScreen filter warnings for unverified files in Microsoft Edge.</h2>
<p><strong>Description:</strong> The Windows Defender SmartScreen filter in Microsoft Edge provides warning messages and blocks potentially malicious websites and file downloads. If users are allowed to ignore warnings from the Windows Defender SmartScreen filter, they could still download potentially malicious files.</p>

<h3>Solution</h3>
<p>Configure the policy value for:</p>
<ul>
<li><strong>Computer Configuration</strong> >> <strong>Administrative Templates</strong> >> <strong>Windows Components</strong> >> <strong>Microsoft Edge</strong> >> <em>'Prevent bypassing Windows Defender SmartScreen prompts for files'</em> to <strong>Enabled</strong>.</li>
<li>Alternatively, configure under <strong>Windows Defender SmartScreen</strong> >> <strong>Microsoft Edge</strong> in Administrative Templates.</li>
</ul>

<h3>Policy Value:</h3>
<p>1</p>
