[void][System.Reflection.Assembly]::LoadWithPartialName('presentationframework')

$input = @'
<Window x:Class="WpfApp4.MainWindow"
        xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        xmlns:d="http://schemas.microsoft.com/expression/blend/2008"
        xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006"
        xmlns:local="clr-namespace:WpfApp4"
        mc:Ignorable="d"
        Title="AD_UnlockTool" Height="450" Width="800">
    <Grid Height="435" Width="800">
        <TabControl>
            <TabItem x:Name="tbUnlock" Header="Unlock and Information">
                <Grid Background="#FFE5E5E5">
                    <Grid.ColumnDefinitions>
                        <ColumnDefinition Width="23*"/>
                        <ColumnDefinition Width="62*"/>
                        <ColumnDefinition Width="12*"/>
                        <ColumnDefinition Width="300*"/>
                    </Grid.ColumnDefinitions>
                    <TextBox x:Name="txtUserName" HorizontalAlignment="Left" Margin="1,44,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="250" Height="22" Grid.ColumnSpan="3" Grid.Column="1"/>
                    <DataGrid x:Name="dgUsers" Margin="1,88,441,136" Grid.ColumnSpan="3" Grid.Column="1" />
                    <Button x:Name="btnSearch" Content="Search" HorizontalAlignment="Left" Margin="115,46,0,0" VerticalAlignment="Top" Height="20" Width="45" IsDefault="True" Grid.Column="3"/>
                    <CheckBox x:Name="chkLocked" Content="Locked" HorizontalAlignment="Left" Margin="321,232,0,0" VerticalAlignment="Top" IsEnabled="False" Grid.Column="3"/>
                    <CheckBox x:Name="chkEnabled" Content="Enabled" HorizontalAlignment="Left" Margin="402,232,0,0" VerticalAlignment="Top" Grid.Column="3"/>
                    <Button x:Name="btnUnlock" Content="Unlock" HorizontalAlignment="Left" Margin="235,222,0,0" VerticalAlignment="Top" Height="34" Width="52" Grid.Column="3"/>
                    <Label Content="Company:" HorizontalAlignment="Left" Margin="230,80,0,0" VerticalAlignment="Top" Width="80" Height="26" Grid.Column="3"/>
                    <Label x:Name="lblEmpID" Content="" HorizontalAlignment="Left" Margin="385,80,0,0" VerticalAlignment="Top" Width="100" Height="26" Grid.Column="3"/>
                    <Label Content="Name:" HorizontalAlignment="Left" Margin="230,114,0,0" VerticalAlignment="Top" Width="80" Height="26" Grid.Column="3"/>
                    <Label x:Name="lblName" Content="" HorizontalAlignment="Left" Margin="385,114,0,0" VerticalAlignment="Top" Height="26" Grid.Column="3"/>
                    <Label Content="Username:" HorizontalAlignment="Left" Margin="230,146,0,0" VerticalAlignment="Top" Width="80" Height="26" Grid.Column="3"/>
                    <Label x:Name="lblUserName" Content="" HorizontalAlignment="Left" Margin="385,146,0,0" VerticalAlignment="Top" Width="100" Height="26" Grid.Column="3"/>
                    <Label Content="Job Title:" HorizontalAlignment="Left" Margin="230,176,0,0" VerticalAlignment="Top" Height="26" Grid.Column="3"/>
                    <Label x:Name="lblTitle" Content="" HorizontalAlignment="Left" Margin="385,176,0,0" VerticalAlignment="Top" Height="26" Grid.Column="3"/>
                    <Label x:Name="lblMessage" Content="" HorizontalAlignment="Left" Margin="1,291,0,0" VerticalAlignment="Top" Width="326" Height="95" FontFamily="Lucida Console" FontSize="12" Foreground="Black" Grid.ColumnSpan="3" Grid.Column="1"/>
                    <Label Content="- User Information -" HorizontalAlignment="Left" Margin="330,36,0,0" VerticalAlignment="Top" Width="134" Height="26" FontFamily="Arial" FontSize="14" Grid.Column="3"/>
                    <Label Content="- Password Reset -" HorizontalAlignment="Left" Margin="341,280,0,0" VerticalAlignment="Top" Width="134" Height="26" FontFamily="Arial" FontSize="14" Grid.Column="3"/>
                    <PasswordBox x:Name="pbReset" Grid.Column="3" HorizontalAlignment="Left" Margin="294,325,0,0" VerticalAlignment="Top" Width="206" Password=""/>
                    <Button x:Name="btnReset" Grid.Column="3" Content="Reset" HorizontalAlignment="Left" Margin="377,348,0,0" VerticalAlignment="Top" Width="56"/>
                    <Label Content="Please enter a new password below" HorizontalAlignment="Left" Margin="331,304,0,0" VerticalAlignment="Top" Width="154" Height="26" FontFamily="Arial" FontSize="8" Grid.Column="3" Foreground="#FFE2660F"/>
                    <Rectangle Grid.Column="3" HorizontalAlignment="Left" Height="2" Margin="235,273,0,0" Stroke="Black" VerticalAlignment="Top" Width="328"/>
                </Grid>

            </TabItem>
            <TabItem x:Name="tbProv" Header="Provision User">
                <Grid Background="#FFE5E5E5">
                    <Label x:Name="Label1" Content="Name:" HorizontalAlignment="Left" Margin="98,36,0,0" VerticalAlignment="Top" Height="32" Width="62" FontFamily="Arial" FontSize="14"/>
                    <TextBox x:Name="tbFirstName" HorizontalAlignment="Left" Height="19" Margin="202,41,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="73" Text="First"/>
                    <TextBox x:Name="tbLastName" HorizontalAlignment="Left" Height="19" Margin="282,41,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="81" Text="Last"/>
                    <Label x:Name="Label2" Content="Password:" HorizontalAlignment="Left" Margin="98,63,0,0" VerticalAlignment="Top" FontFamily="Arial" FontSize="14"/>
                    <PasswordBox x:Name="pwdPassword" HorizontalAlignment="Left" Margin="202,68,0,0" VerticalAlignment="Top" Width="161" Height="19"/>
                    <Label x:Name="Label3" Content="Username:" HorizontalAlignment="Left" Margin="96,89,0,0" VerticalAlignment="Top" FontFamily="Arial" FontSize="14"/>
                    <TextBox x:Name="tbUsername" HorizontalAlignment="Left" Height="19" Margin="202,94,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="161"/>
                    <Label x:Name="Label4" Content="Job Title:" HorizontalAlignment="Left" Height="32" Margin="98,115,0,0" VerticalAlignment="Top" Width="80" FontFamily="Arial" FontSize="14"/>
                    <TextBox x:Name="tbTitle" HorizontalAlignment="Left" Height="19" Margin="202,120,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="161"/>
                    <Label x:Name="Label5" Content="Department:" HorizontalAlignment="Left" Margin="96,141,0,0" VerticalAlignment="Top" FontFamily="Arial" FontSize="14"/>
                    <TextBox x:Name="tbDepartment" HorizontalAlignment="Left" Margin="202,147,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="161" Height="19"/>
                    <Label x:Name="Label6" Content="Company:" HorizontalAlignment="Left" Margin="96,167,0,0" VerticalAlignment="Top" FontFamily="Arial" FontSize="14"/>
                    <TextBox x:Name="tbCompany" HorizontalAlignment="Left" Margin="202,172,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="161" Height="19"/>
                    <Label x:Name="Label7" Content="Manager:" HorizontalAlignment="Left" Margin="98,193,0,0" VerticalAlignment="Top" FontFamily="Arial" FontSize="14"/>
                    <TextBox x:Name="tbManager" HorizontalAlignment="Left" Margin="202,198,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="161" Height="19"/>
                    <Label x:Name="Label8" Content="Tel No.:" HorizontalAlignment="Left" Margin="405,36,0,0" VerticalAlignment="Top" FontFamily="Arial" FontSize="14"/>
                    <TextBox x:Name="tbTel" HorizontalAlignment="Left" Margin="499,41,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="161" Height="19"/>
                    <Label x:Name="Label9" Content="Email:" HorizontalAlignment="Left" Margin="405,63,0,0" VerticalAlignment="Top" FontSize="14" FontFamily="Arial"/>
                    <TextBox x:Name="tbEmail" HorizontalAlignment="Left" Margin="499,68,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="161" Height="19"/>
                    <Label x:Name="Label10" Content="Website:" HorizontalAlignment="Left" Margin="405,89,0,0" VerticalAlignment="Top" FontFamily="Arial" FontSize="14" RenderTransformOrigin="0.478,0.551"/>
                    <TextBox x:Name="tbWebsite" HorizontalAlignment="Left" Margin="499,94,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="161" Height="19"/>
                    <Label x:Name="Label11" Content="Country:" HorizontalAlignment="Left" Margin="405,115,0,0" VerticalAlignment="Top" FontFamily="Arial" FontSize="14"/>
                    <ComboBox x:Name="cbCountry" HorizontalAlignment="Left" Margin="499,120,0,0" VerticalAlignment="Top" Width="161"/>
                    <Label x:Name="Label12" Content="OU:" HorizontalAlignment="Left" Margin="417,143,0,0" VerticalAlignment="Top" FontFamily="Arial" FontSize="14" RenderTransformOrigin="0.516,0.615"/>
                    <TextBox x:Name="tbOU" HorizontalAlignment="Left" Margin="499,147,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="161" Height="19"/>
                    <Label x:Name="Label13" Content="Note: For Organizational Unit, Kindly input numbers only. For Internals, type in &quot;200&quot;." HorizontalAlignment="Left" Margin="395,171,0,0" VerticalAlignment="Top" FontStyle="Italic" FontSize="8" Height="24" Width="341" Foreground="Red"/>
                    <Button x:Name="btnCreate" Content="Create User &gt;" HorizontalAlignment="Left" Height="40" Margin="526,198,0,0" VerticalAlignment="Top" Width="134" FontFamily="Arial" FontSize="18"/>
                    <TextBox x:Name="tbMessage" HorizontalAlignment="Left" Height="95" Margin="106,260,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="554" FontFamily="Lucida Console" FontStyle="Italic" IsReadOnly="True"/>
                </Grid>
            </TabItem>
        </TabControl>
    </Grid>
</Window>
'@

$input = $input -replace '^<Window.*', '<Window' -replace 'mc:Ignorable="d"','' -replace "x:N",'N' 
[xml]$xaml = $input
$xmlreader=(New-Object System.Xml.XmlNodeReader $xaml)
$xamlForm=[Windows.Markup.XamlReader]::Load( $xmlreader )

$xaml.SelectNodes("//*[@Name]") | ForEach-Object -Process {
    Set-Variable -Name "var_$($_.Name)" -Value $xamlForm.FindName($_.Name)
    }

$var_tbFirstName.Add_GotFocus({
    if ($var_tbFirstName.Text -eq "First") {
        $var_tbFirstName.Clear() 
    }
 }) 
$var_tbFirstName.Add_LostFocus({
     if ([string]::IsNullOrWhiteSpace($var_tbFirstName.Text)) {
        $var_tbFirstName.Text = "First"
     }
})
    
$var_tbLastName.Add_GotFocus({
    if ($var_tbLastName.Text -eq "Last") {
        $var_tbLastName.Clear() 
    }
})

$var_tbLastName.Add_LostFocus({
    if ([string]::IsNullOrWhiteSpace($var_tbLastName.Text)) {
        $var_tbLastName.Text = "Last"
    }
})

$var_cbCountry.ItemsSource = @(
        "AU", "IN", "PH", "SA", "US"
)
    #First tab for unlocking and showing users's information#
function ListUsers{
    $Filter=$var_txtUserName.Text
    $Users=Get-ADUser -Filter "SamAccountName -like '$Filter'" -Server NG.LOCAL -Properties *

    $Columns=@(
        'SamAccountName'
        'DisplayName'
        'Title'
        'DistinguishedName'
    )

    $UserDataTable=New-Object System.Data.DataTable
    $UserDataTable.Columns.AddRange($Columns)

    foreach($user in $Users){
        $Entry=@()
        foreach($Column in $Columns){
            $Entry+=$User.$Column
        }
        $UserDataTable.Rows.Add($Entry)
    }

    $var_dgUsers.ItemsSource=$UserDataTable.DefaultView
    $var_dgUsers.IsReadOnly=$true
    $var_dgUsers.GridLinesVisibility="None"
}

function LoadUSer{
    $User=Get-ADUser -Identity $($var_dgUsers.SelectedItem.SamAccountName) -Server NG.LOCAL -Properties *
    $var_lblEmpID.Content=$User.Company
    $var_lblName.Content=$User.DisplayName
    $var_lblUserName.Content=$User.SamAccountName
    $var_lblTitle.Content=$User.Title
    $var_chkEnabled.IsChecked=$User.Enabled
    $var_chkLocked.IsChecked=$User.LockedOut
    $var_lblMessage.Content=""
    if ($var_chkLocked.IsChecked) {
        $var_btnUnlock.IsEnabled=$true
    }else {
        $var_btnUnlock.IsEnabled=$false
    }
}

function UnlockAccount {
    try{
        Unlock-ADAccount -Identity $var_lblUserName.Content -Server NG.LOCAL
        LoadUSer
        $var_lblMessage.Content="Account has been unlocked"
        $var_lblMessage.Foreground = [System.Windows.Media.Brushes]::Green
    }catch{
        $var_lblMessage.Content="Error has occured!"
        $var_lblMessage.Foreground = [System.Windows.Media.Brushes]::Red
    }
}

function EnableAccount {
    try{
        $User=Get-ADUser -Identity $($var_dgUsers.SelectedItem.SamAccountName) -Server NG.LOCAL -Properties *
        if ($User.Enabled -eq $false) {
            Enable-ADAccount -Identity  $var_lblUserName.Content -Server NG.LOCAL
            LoadUSer
            $var_lblMessage.Content="Account has been enabled"
            $var_lblMessage.Foreground = [System.Windows.Media.Brushes]::Blue
        }
    }catch{
        $var_lblMessage.Content="Error has occured!"
        $var_lblMessage.Foreground = [System.Windows.Media.Brushes]::Red
    }
    
}

function DisableAccount {
    try {
        $User=Get-ADUser -Identity $($var_dgUsers.SelectedItem.SamAccountName) -Server NG.LOCAL -Properties *
        if ($User.Enabled) {
            Disable-ADAccount -Identity  $var_lblUserName.Content -Server NG.LOCAL
            LoadUSer
            $var_lblMessage.Content="Account has been disabled"
            $var_lblMessage.Foreground = [System.Windows.Media.Brushes]::Orange
        }
    }catch{
        $var_lblMessage.Content="Error has occured!"
        $var_lblMessage.Foreground = [System.Windows.Media.Brushes]::Red
    }
}

function ResetPassword {
    try {
        $password = $var_pbReset.SecurePassword
        Set-ADAccountPassword -Identity $($var_dgUsers.SelectedItem.SamAccountName) -NewPassword $password -Server NG.LOCAL
            $var_lblMessage.Content="Account password reset successfully"
            $var_lblMessage.Foreground = [System.Windows.Media.Brushes]::Green
    }catch{
          $var_lblMessage.Content="Error has occured! Please make sure the password requirement has been met."
           $var_lblMessage.Foreground = [System.Windows.Media.Brushes]::Red
    }
}

$var_btnSearch.Add_Click({ListUsers})
$var_dgUsers.Add_SelectionChanged({LoadUSer})
$var_btnUnlock.Add_Click({UnlockAccount})
$var_chkEnabled.Add_Checked({EnableAccount})
$var_chkEnabled.Add_UnChecked({DisableAccount})
$var_btnReset.Add_Click({ResetPassword})

#Second tab for provisioning users#
function CreateUser {
    try {
        $password = $var_pwdPassword.SecurePassword
        $ouMapping = @{
            "200" = "OU=Test,OU=NetGate - Internal,OU=Clients,DC=NG,DC=LOCAL"
            "100" = "OU=Test1,OU=NetGate - Internal,OU=Clients,DC=NG,DC=LOCAL"
        }
        $ouInput = $var_tbOU.Text
        if ($ouMapping.ContainsKey($ouInput)) {
            $ouPath = $ouMapping[$ouInput]
        } else {
            $ouPath = $ouInput
        }
        $managerSamAccountName = $null
        if ($var_tbManager.Text -ne "") {
            $managerName = $var_tbManager.Text
            $manager = Get-ADUser -Filter {SamAccountName -eq $managerName} -Server NG.LOCAL -Properties *
            if ($manager) {
                $managerSamAccountName = $manager.SamAccountName
            } else {
                $var_tbMessage.Text = "Manager not found in Active Directory."
                $var_tbMessage.Foreground = [System.Windows.Media.Brushes]::Red
                return
            }
        }

        New-AdUser -AccountPassword $password `
               -GivenName $var_tbFirstName.Text `
               -Surname $var_tbLastName.Text `
               -DisplayName "$($var_tbFirstName.Text) $($var_tbLastName.Text)" `
               -Name "$($var_tbFirstName.Text) $($var_tbLastName.Text)" `
               -SamAccountName $var_tbUsername.Text `
               -Title $var_tbTitle.Text `
               -Department $var_tbDepartment.Text `
               -Company $var_tbCompany.Text `
               -Manager $managerSamAccountName `
               -EmailAddress $var_tbEmail.Text `
               -OfficePhone $var_tbTel.Text `
               -HomePage $var_tbWebsite.Text `
               -EmployeeID $var_tbUsername.Text `
               -PasswordNeverExpires $true `
               -Path $ouPath `
               -Enabled $true

               $fullName = "$($var_tbFirstName.Text) $($var_tbLastName.Text)"
               $var_tbMessage.Text = "User $fullName created successfully!"
               $var_tbMessage.Foreground = [System.Windows.Media.Brushes]::Green
    }
    catch {
        $var_tbMessage.Text = "Error has occurred: $($_.Exception.Message)"
        $var_tbMessage.Foreground = [System.Windows.Media.Brushes]::Red
        Write-Host "Error: $($_.Exception.Message)"
    }
    
}

$var_btnCreate.Add_Click({CreateUser})

$xamlForm.ShowDialog() | out-null