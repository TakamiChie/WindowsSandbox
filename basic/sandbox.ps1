Set-Content -Path "$env:TEMP\temp.wsb" -Value (Get-Content "$PSScriptRoot\template.wsb" | % { $_ -replace "%CURRENT%", $PSScriptRoot })
Start-Process $env:TEMP\temp.wsb -Wait
Remove-Item "$env:TEMP\temp.wsb"