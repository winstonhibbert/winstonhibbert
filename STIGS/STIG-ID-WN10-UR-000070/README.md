<h2>The Deny access to this computer from the network user right on workstations must be configured to prevent access from highly privileged domain accounts and local accounts on domain systems and unauthenticated access on all systems.</h2>

<h3>Description</h3>
<p>
Inappropriate granting of user rights can provide system, administrative, and other high-level capabilities.<br><br>
The <strong>'Deny access to this computer from the network'</strong> right defines the accounts that are prevented from logging on from the network.<br><br>
In an Active Directory Domain, denying logons to the Enterprise Admins and Domain Admins groups on lower trust systems helps mitigate the risk of privilege escalation from credential theft attacks.<br>
Local accounts on domain-joined systems must also be assigned this right to decrease the risk of lateral movement. The Guests group must be assigned this right to prevent unauthenticated access.
</p>

<h3>Solution</h3>
<p>
Configure the policy value for:<br>
<strong>Computer Configuration</strong> >> <strong>Windows Settings</strong> >> <strong>Security Settings</strong> >> <strong>Local Policies</strong> >> <strong>User Rights Assignment</strong> >> 
<em>'Deny access to this computer from the network'</em> to include the following:
</p>

<ul>
<li><strong>Domain Systems Only:</strong> Enterprise Admins group, Domain Admins group, Local account</li>
<li><strong>All Systems:</strong> Guests group</li>
</ul>

<p><strong>Note:</strong> 'Local account' is a built-in security group used to assign user rights and permissions to all local accounts.</p>

<h3>Policy Value:</h3>
<p>'Guests'</p>
