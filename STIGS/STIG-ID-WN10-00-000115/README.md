<h2>The Telnet Client must not be installed on the system</h2>

<h3>Description</h3>
<p>
Some protocols and services do not support required security features, such as encrypting passwords or traffic.
Telnet is one such protocol that transmits data in plaintext, including credentials, making it highly insecure on modern systems.
</p>

<h3>Solution</h3>
<p>
Uninstall <strong>Telnet Client</strong> from the system:<br>
1. Open <em>Programs and Features</em>.<br>
2. Select <em>Turn Windows Features on or off</em>.<br>
3. De-select <strong>Telnet Client</strong>.<br>
</p>

<h3>Policy Value</h3>
<p><code>%windir%\System32\telnet.exe</code></p>
