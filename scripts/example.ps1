$command = "DIR C:\windows\Temp"
$username = "Administrador"
$password = ConvertTo-SecureString "123456" -AsPlainText -Force
$credential = New-Object System.Management.Automation.PSCredential $username, $password

Invoke-Command -ComputerName $env:COMPUTERNAME -ScriptBlock { $command } -Credential $credential