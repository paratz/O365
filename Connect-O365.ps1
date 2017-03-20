$UserCredential = Get-Credential
Connect-MsolService -Credential $UserCredential

Set-ExecutionPolicy RemoteSigned

$SessionEx = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://outlook.office365.com/powershell-liveid/ -Credential $UserCredential -Authentication Basic -AllowRedirection
Import-PSSession $SessionEx

$sessionSfB = New-CsOnlineSession -Credential $UserCredential -Verbose
Import-PSSession $sessionSfB
