<h2>Wi-Fi Sense must be disabled.</h2>

<h3>Description</h3>
<p>Wi-Fi Sense automatically connects the system to known hotspots and networks that contacts have shared. It also allows the sharing of the system's known networks to contacts. Automatically connecting to hotspots and shared networks can expose a system to unsecured or potentially malicious systems.</p>

<h3>Solution</h3>
<p>Configure the policy value for:</p>
<p><strong>Computer Configuration >> Administrative Templates >> Network >> WLAN Service >> WLAN Settings >> 'Allow Windows to automatically connect to suggested open hotspots, to networks shared by contacts, and to hotspots offering paid services'</strong> to <strong>'Disabled'</strong>.</p>

<p>v1507 LTSB does not include this group policy setting. It may be configured through other means such as using group policy from a later version of Windows 10 or a registry update.</p>

<h3>See Also</h3>
<p><a href="https://dl.dod.cyber.mil/wp-content/uploads/stigs/zip/U_MS_Windows_10_V3R2_STIG.zip">U_MS_Windows_10_V3R2_STIG.zip</a></p>

<h3>Audit File</h3>
<p>DISA_STIG_Windows_10_v3r2.audit</p>

<h3>Policy Value</h3>
<p>0</p>

<h3>Reference:</h3>
https://stigaview.com/products/win10/v3r1/WN10-CC-000065/
