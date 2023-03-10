$username = "Administrador"
$password = ConvertTo-SecureString "123456" -AsPlainText -Force
$credential = New-Object System.Management.Automation.PSCredential $username, $password

Start-Process -FilePath "powershell" -ArgumentList "-ExecutionPolicy Bypass .\enableWinRM.ps1" -Credential $credential -WindowStyle Hidden