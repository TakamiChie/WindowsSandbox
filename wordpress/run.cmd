"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

powershell choco install -y microsoft-edge
powershell Set-NetFirewallProfile -Enabled false
powershell choco install -y XAMPP-80
powershell Set-NetFirewallProfile -Enabled true
powershell Invoke-WebRequest https://ja.wordpress.org/latest-ja.zip -OutFile C:\wordpress.zip
powershell Expand-Archive C:\wordpress.zip C:\xampp\htdocs\
powershell Set-WinUserLanguageList -Force ja-JP
powershell Set-Culture -CultureInfo ja-JP
