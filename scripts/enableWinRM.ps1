Start-Process -FilePath "powershell" -ArgumentList "enable-psremoting -force -skipNetworkProfileCheck; if ((Get-NetConnectionProfile | Select-Object -Property NetworkCategory).NetworkCategory -eq 'Public'){Set-NetConnectionProfile -NetworkCategory Private; winrm quickconfig -quiet} else {winrm quickconfig -quiet}" -Verb RunAs -WindowStyle Hidden