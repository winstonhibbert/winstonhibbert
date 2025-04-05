<h2>Reversible password encryption must be disabled</h2>

<h3>Description</h3>
<p>
Storing passwords using reversible encryption is essentially the same as storing clear-text versions of the passwords. For this reason, this policy must never be enabled.
</p>

<h3>Solution</h3>
<p>
Configure the policy value for:<br>
<strong>Computer Configuration >> Windows Settings >> Security Settings >> Account Policies >> Password Policy >></strong><br>
<em>'Store passwords using reversible encryption'</em> to <strong>'Disabled'</strong>.
</p>

<h3>Policy Value</h3>
<p><code>Disabled</code></p>
