$PASSWORD_FOR_USERS   = "Password1"
$USER_FIRST_LAST_LIST = Get-Content .\names.txt


$password = ConvertTo-SecureString $PASSWORD_FOR_USERS -AsPlainText -Force

foreach ($n in $USER_FIRST_LAST_LIST) {
    $first, $last = $n.Split(" ")
    $first = $first.Substring(0,1).ToUpper() + $first.Substring(1).ToLower()
    $last = $last.Substring(0,1).ToUpper() + $last.Substring(1).ToLower()
    $username = "$($first)$($last.Substring(0,1))".ToLower()
    Write-Host "Creating user: $($n)" -BackgroundColor Black -ForegroundColor Cyan
    
    New-AdUser -AccountPassword $password `
               -GivenName $first `
               -Surname $last `
               -DisplayName "$first $last" `
               -Name "$first $last" `
               -SamAccountName $username `
               -EmployeeID $username `
               -PasswordNeverExpires $true `
               -Path "OU=Users,OU=NetGate - Internal,OU=Clients,DC=NG,DC=LOCAL" `
               -Enabled $true
}