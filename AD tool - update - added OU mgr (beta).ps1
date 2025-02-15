[void][System.Reflection.Assembly]::LoadWithPartialName('presentationframework')

$input = @'
<Window x:Class="WpfApp4.MainWindow"
        xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        xmlns:d="http://schemas.microsoft.com/expression/blend/2008"
        xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006"
        xmlns:local="clr-namespace:WpfApp4"
        mc:Ignorable="d"
        Title="AD Tool v1.3" Height="450" Width="800">
    <Grid Height="435" Width="800">
        <TabControl>
            <TabItem x:Name="tbUnlock" Header="Modify User" Width="120">
                <Grid Background="#FFE5E5E5">
                    <Grid.ColumnDefinitions>
                        <ColumnDefinition Width="23*"/>
                        <ColumnDefinition Width="62*"/>
                        <ColumnDefinition Width="12*"/>
                        <ColumnDefinition Width="300*"/>
                    </Grid.ColumnDefinitions>
                    <TextBox x:Name="txtUserName" HorizontalAlignment="Left" Margin="1,44,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="250" Height="22" Grid.ColumnSpan="3" Grid.Column="1" Text="Enter a username or name*..." FontStyle="Italic"/>
                    <DataGrid x:Name="dgUsers" Margin="1,88,441,136" Grid.ColumnSpan="3" Grid.Column="1" />
                    <Button x:Name="btnSearch" Content="Search" HorizontalAlignment="Left" Margin="115,46,0,0" VerticalAlignment="Top" Height="20" Width="45" IsDefault="True" Grid.Column="3"/>
                    <CheckBox x:Name="chkLocked" Content="Locked" HorizontalAlignment="Left" Margin="330,286,0,0" VerticalAlignment="Top" IsEnabled="False" Grid.Column="3"/>
                    <CheckBox x:Name="chkEnabled" Content="Enabled" HorizontalAlignment="Left" Margin="418,286,0,0" VerticalAlignment="Top" Grid.Column="3"/>
                    <Button x:Name="btnUnlock" Content="Unlock" HorizontalAlignment="Left" Margin="230,278,0,0" VerticalAlignment="Top" Height="34" Width="52" Grid.Column="3"/>
                    <Label Content="Company:" HorizontalAlignment="Left" Margin="230,80,0,0" VerticalAlignment="Top" Width="80" Height="26" Grid.Column="3"/>
                    <Label x:Name="lblEmpID" Content="" HorizontalAlignment="Left" Margin="359,80,0,0" VerticalAlignment="Top" Width="100" Height="26" Grid.Column="3"/>
                    <Label Content="Name:" HorizontalAlignment="Left" Margin="230,106,0,0" VerticalAlignment="Top" Width="80" Height="26" Grid.Column="3"/>
                    <Label x:Name="lblName" Content="" HorizontalAlignment="Left" Margin="359,106,0,0" VerticalAlignment="Top" Height="26" Grid.Column="3"/>
                    <Label Content="Username:" HorizontalAlignment="Left" Margin="230,130,0,0" VerticalAlignment="Top" Width="80" Height="26" Grid.Column="3"/>
                    <Label x:Name="lblUserName" Content="" HorizontalAlignment="Left" Margin="359,130,0,0" VerticalAlignment="Top" Width="100" Height="26" Grid.Column="3"/>
                    <Label Content="Job Title:" HorizontalAlignment="Left" Margin="230,154,0,0" VerticalAlignment="Top" Height="26" Grid.Column="3"/>
                    <Label x:Name="lblTitle" Content="" HorizontalAlignment="Left" Margin="359,154,0,0" VerticalAlignment="Top" Height="26" Grid.Column="3"/>
                    <Label Content="Enter a new password above to reset" HorizontalAlignment="Left" Margin="330,348,0,0" VerticalAlignment="Top" Width="165" Height="26" FontSize="9" Grid.Column="3" Foreground="#FFE2660F"/>
                    <Label Content="Email:" HorizontalAlignment="Left" Margin="230,180,0,0" VerticalAlignment="Top" Height="26" Grid.Column="3"/>
                    <Label x:Name="lblEmail" Content="" HorizontalAlignment="Left" Margin="359,180,0,0" VerticalAlignment="Top" Height="26" Grid.Column="3" Width="150"/>
                    <Label Content="Phone:" HorizontalAlignment="Left" Margin="230,204,0,0" VerticalAlignment="Top" Height="26" Grid.Column="3"/>
                    <Label x:Name="lblPhone" Content="" HorizontalAlignment="Left" Margin="359,204,0,0" VerticalAlignment="Top" Height="26" Grid.Column="3" Width="150"/>
                    <Label Content="Address:" HorizontalAlignment="Left" Margin="230,231,0,0" VerticalAlignment="Top" Height="26" Grid.Column="3"/>
                    <TextBlock x:Name="tbkAddress" Grid.Column="3" HorizontalAlignment="Left" Margin="359,236,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="220" Height="35"/>
                    <Label x:Name="lblMessage" Content="" HorizontalAlignment="Left" Margin="1,291,0,0" VerticalAlignment="Top" Width="326" Height="95" FontFamily="Lucida Console" FontSize="12" Foreground="Black" Grid.ColumnSpan="3" Grid.Column="1"/>
                    <Label Content="- User Information -" HorizontalAlignment="Left" Margin="330,36,0,0" VerticalAlignment="Top" Width="134" Height="26" FontFamily="Arial" FontSize="14" Grid.Column="3"/>
                    <Label Content="New Password:" HorizontalAlignment="Left" Margin="219,322,0,0" VerticalAlignment="Top" Width="102" Height="26" FontFamily="Arial" Grid.Column="3"/>
                    <PasswordBox x:Name="pbReset" Grid.Column="3" HorizontalAlignment="Left" Margin="310,325,0,0" VerticalAlignment="Top" Width="190" Password=""/>
                    <Button x:Name="btnReset" Grid.Column="3" Content="Reset" HorizontalAlignment="Left" Margin="510,325,0,0" VerticalAlignment="Top" Width="51" Height="18"/>
                </Grid>
            </TabItem>
            <TabItem x:Name="tbProv" Header="Provision User" Width="120">
                <Grid Background="#FFE5E5E5">
                    <Label x:Name="Label1" Content="Name:" HorizontalAlignment="Left" Margin="98,36,0,0" VerticalAlignment="Top" Height="32" Width="62" FontFamily="Arial" FontSize="14"/>
                    <TextBox x:Name="tbFirstName" HorizontalAlignment="Left" Height="19" Margin="202,41,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="73" Text="First" FontStyle="Italic"/>
                    <TextBox x:Name="tbLastName" HorizontalAlignment="Left" Height="19" Margin="282,41,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="81" Text="Last" FontStyle="Italic"/>
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
                    <Label x:Name="Label10_Copy" Content="Address:" HorizontalAlignment="Left" Margin="405,116,0,0" VerticalAlignment="Top" FontFamily="Arial" FontSize="14" RenderTransformOrigin="0.478,0.551"/>
                    <TextBox x:Name="tbAddress" HorizontalAlignment="Left" Margin="499,120,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="161" Height="19"/>
                    <Label x:Name="Label11" Content="Country:" HorizontalAlignment="Left" Margin="405,145,0,0" VerticalAlignment="Top" FontFamily="Arial" FontSize="14"/>
                    <ComboBox x:Name="cbCountry" HorizontalAlignment="Left" Margin="499,146,0,0" VerticalAlignment="Top" Width="161">
                        <ComboBoxItem Content="AU"/>
                        <ComboBoxItem Content="IN"/>
                        <ComboBoxItem Content="PH"/>
                        <ComboBoxItem Content="SA"/>
                        <ComboBoxItem Content="US"/>
                    </ComboBox>
                    <Label x:Name="Label12" Content="OU:" HorizontalAlignment="Left" Margin="420,171,0,0" VerticalAlignment="Top" FontFamily="Arial" FontSize="14" RenderTransformOrigin="0.516,0.615"/>
                    <TextBox x:Name="tbOU" HorizontalAlignment="Left" Margin="499,176,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="161" Height="19"/>
                    <Label x:Name="Label13" Content="Note: For Organizational Unit, Kindly input numbers only. For Internals, type in &quot;200&quot;." HorizontalAlignment="Left" Margin="397,196,0,0" VerticalAlignment="Top" FontStyle="Italic" FontSize="8" Height="24" Width="341" Foreground="Red"/>
                    <Button x:Name="btnCreate" Content="Create User" HorizontalAlignment="Left" Height="27" Margin="530,220,0,0" VerticalAlignment="Top" Width="99" FontSize="14" IsDefault="True"/>
                    <TextBox x:Name="tbMessage" HorizontalAlignment="Left" Height="95" Margin="106,260,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="554" FontFamily="Lucida Console" FontStyle="Italic" IsReadOnly="True"/>
                </Grid>
            </TabItem>
            <TabItem x:Name="tbOuMgr" HorizontalAlignment="Center" Height="20" Header="OU Manager" VerticalAlignment="Center" Width="120">
                <Grid Background="#FFE5E5E5">
                    <Grid.ColumnDefinitions>
                        <ColumnDefinition Width="439*"/>
                        <ColumnDefinition Width="355*"/>
                    </Grid.ColumnDefinitions>
                    <TextBox x:Name="tbClient" HorizontalAlignment="Left" Margin="202,41,0,0" TextWrapping="Wrap" Text="Enter Client's Name..." VerticalAlignment="Top" Width="166" FontStyle="Italic" Height="20"/>
                    <Button x:Name="btnSearchOU" Content="Search" HorizontalAlignment="Left" Margin="377,41,0,0" VerticalAlignment="Top" Height="20" Width="47" IsDefault="True"/>
                    <Button x:Name="tbDeleteClient" Content="Delete" HorizontalAlignment="Left" Margin="429,41,0,0" VerticalAlignment="Top" Grid.ColumnSpan="2" Width="59" Height="20"/>
                    <Label Content="OU Code:" HorizontalAlignment="Left" Margin="54,183,0,0" VerticalAlignment="Top"/>
                    <Label Content="Active Users:" HorizontalAlignment="Left" Margin="54,209,0,0" VerticalAlignment="Top" Width="80"/>
                    <Label Content="Inactive Users:" HorizontalAlignment="Left" Margin="54,235,0,0" VerticalAlignment="Top" Width="86"/>
                    <Label Content="Company:" HorizontalAlignment="Left" Margin="54,157,0,0" VerticalAlignment="Top" Width="72"/>
                    <Label Content="Computers:" HorizontalAlignment="Left" Margin="54,261,0,0" VerticalAlignment="Top" Width="74"/>
                    <Label Content="Subnet:" HorizontalAlignment="Left" Margin="54,289,0,0" VerticalAlignment="Top" Width="68"/>
                    <Label Content="VLAN:" HorizontalAlignment="Left" Margin="54,315,0,0" VerticalAlignment="Top" Width="49"/>
                    <DataGrid x:Name="dgClientList" Margin="54,66,306,258" Grid.ColumnSpan="2" />
                    <DataGrid x:Name="dgUserList" Margin="248,178,305,151" Grid.ColumnSpan="2" />
                    <DataGrid x:Name="dgComputerList" Margin="248,282,306,47" Grid.ColumnSpan="2" />
                    <Label Content="Client List:" HorizontalAlignment="Left" Margin="54,41,0,0" VerticalAlignment="Top"/>
                    <Label Content="Users:" HorizontalAlignment="Left" Margin="248,154,0,0" VerticalAlignment="Top"/>
                    <Label Content="Computers:" HorizontalAlignment="Left" Margin="248,256,0,0" VerticalAlignment="Top"/>
                    <Label Grid.Column="1" Content="Provision OU" HorizontalAlignment="Left" Margin="164,33,0,0" VerticalAlignment="Top"/>
                    <TextBox x:Name="tbClientName" Grid.Column="1" HorizontalAlignment="Left" Margin="116,66,0,0" TextWrapping="Wrap" Text="New Client's Name..." VerticalAlignment="Top" Width="175" Height="20" FontStyle="Italic"/>
                    <TextBox x:Name="tbOUcode" Grid.Column="1" HorizontalAlignment="Left" Margin="208,91,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="35" Height="20"/>
                    <Label Grid.Column="1" Content="OU Assignment:" HorizontalAlignment="Left" Margin="113,86,0,0" VerticalAlignment="Top"/>
                    <Button x:Name="btnCreateOU" Grid.Column="1" Content="Create" HorizontalAlignment="Left" Margin="248,91,0,0" VerticalAlignment="Top" Width="43"/>
                    <Label x:Name="lblOUMessage" Grid.Column="1" Content="" HorizontalAlignment="Left" Margin="102,123,0,0" VerticalAlignment="Top"/>
                    <Label Grid.Column="1" Content="Transfer Users/Computers" HorizontalAlignment="Left" Margin="130,154,0,0" VerticalAlignment="Top"/>
                    <Label Grid.Column="1" Content="Transfer to:" HorizontalAlignment="Left" Margin="74,184,0,0" VerticalAlignment="Top" FontStyle="Italic"/>
                    <Label Grid.Column="1" Content="Transfer to:" HorizontalAlignment="Left" Margin="74,289,0,0" VerticalAlignment="Top" FontStyle="Italic"/>
                    <TextBox x:Name="tbOUcodeTransferUser" Grid.Column="1" HorizontalAlignment="Left" Margin="147,189,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="56" Height="20"/>
                    <Button x:Name="btnGoUser" Grid.Column="1" Content="Go" HorizontalAlignment="Left" Margin="215,189,0,0" VerticalAlignment="Top" Width="28"/>
                    <TextBox x:Name="tbOUcodeTransferComputer" Grid.Column="1" HorizontalAlignment="Left" Margin="147,292,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="56" Height="20"/>
                    <Button x:Name="btnGoComputer" Grid.Column="1" Content="Go" HorizontalAlignment="Left" Margin="215,292,0,0" VerticalAlignment="Top" Width="28"/>
                    <Label x:Name="lblOUMessageTransferUser" Grid.Column="1" Content="" HorizontalAlignment="Left" Margin="192,222,0,0" VerticalAlignment="Top"/>
                    <Label x:Name="lblOUMessageTransferComputer" Grid.Column="1" Content="" HorizontalAlignment="Left" Margin="192,328,0,0" VerticalAlignment="Top"/>
                    <Label x:Name="lblClientName" Content="" HorizontalAlignment="Left" Margin="146,157,0,0" VerticalAlignment="Top"/>
                    <Label x:Name="lblOUIdentifier" Content="" HorizontalAlignment="Left" Margin="146,183,0,0" VerticalAlignment="Top"/>
                    <Label x:Name="lblUserCount" Content="" HorizontalAlignment="Left" Margin="146,209,0,0" VerticalAlignment="Top"/>
                    <Label x:Name="lblUserCountInactive" Content="" HorizontalAlignment="Left" Margin="146,235,0,0" VerticalAlignment="Top"/>
                    <Label x:Name="lblComputerCount" Content="" HorizontalAlignment="Left" Margin="146,261,0,0" VerticalAlignment="Top"/>
                    <Label x:Name="lblSubnet" Content="" HorizontalAlignment="Left" Margin="146,289,0,0" VerticalAlignment="Top"/>
                    <Label x:Name="lblVlan" Content="" HorizontalAlignment="Left" Margin="146,315,0,0" VerticalAlignment="Top"/>
                </Grid>
            </TabItem>
            <TabItem x:Name="tbAssetsSearch" HorizontalAlignment="Center" Height="20" Header="IT Assets Search" VerticalAlignment="Center" Width="120">
                <Grid Background="#FFE5E5E5">
                    <TextBox x:Name="txtAssetTag" HorizontalAlignment="Left" Margin="103,40,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="250" Height="22" Text="Enter a SD tag..." FontStyle="Italic"/>
                    <Button x:Name="btnImport" Content="Import" HorizontalAlignment="Left" Margin="47,41,0,0" VerticalAlignment="Top" Height="20" Width="45" IsDefault="True"/>
                    <DataGrid x:Name="dgAssets" Margin="47,88,441,136" />
                    <Label Content="- Asset Information -" HorizontalAlignment="Left" Margin="524,36,0,0" VerticalAlignment="Top" Width="134" Height="26" FontFamily="Arial" FontSize="14"/>
                    <Label Content="Asset Tag:" HorizontalAlignment="Left" Margin="424,80,0,0" VerticalAlignment="Top" Width="80" Height="26"/>
                    <Label Content="Assigned to:" HorizontalAlignment="Left" Margin="424,106,0,0" VerticalAlignment="Top" Width="80" Height="26"/>
                    <Label Content="Item:" HorizontalAlignment="Left" Margin="424,130,0,0" VerticalAlignment="Top" Width="80" Height="26"/>
                    <Label Content="Model No.:" HorizontalAlignment="Left" Margin="424,154,0,0" VerticalAlignment="Top" Height="26"/>
                    <Label Content="S/N:" HorizontalAlignment="Left" Margin="424,180,0,0" VerticalAlignment="Top" Height="26"/>
                    <Label Content="Service Tag:" HorizontalAlignment="Left" Margin="424,204,0,0" VerticalAlignment="Top" Height="26"/>
                    <Label Content="Express Service Code:" HorizontalAlignment="Left" Margin="424,231,0,0" VerticalAlignment="Top" Height="26"/>
                    <Label x:Name="lblAssetTag" Content="" HorizontalAlignment="Left" Margin="579,80,0,0" VerticalAlignment="Top" Width="100" Height="26"/>
                    <Label x:Name="lblAssignedTo" Content="" HorizontalAlignment="Left" Margin="579,106,0,0" VerticalAlignment="Top" Height="26"/>
                    <Label x:Name="lblItem" Content="" HorizontalAlignment="Left" Margin="579,130,0,0" VerticalAlignment="Top" Width="100" Height="26"/>
                    <Label x:Name="lblModel" Content="" HorizontalAlignment="Left" Margin="579,154,0,0" VerticalAlignment="Top" Height="26"/>
                    <Label x:Name="lblSN" Content="" HorizontalAlignment="Left" Margin="579,180,0,0" VerticalAlignment="Top" Height="26" Width="150"/>
                    <Label x:Name="lblServiceTag" Content="" HorizontalAlignment="Left" Margin="579,204,0,0" VerticalAlignment="Top" Height="26" Width="150"/>
                    <Label x:Name="lblESC" Content="" HorizontalAlignment="Left" Margin="579,231,0,0" VerticalAlignment="Top" Height="26"/>
                    <Label Content="Location:" HorizontalAlignment="Left" Margin="424,257,0,0" VerticalAlignment="Top" Height="26"/>
                    <Label x:Name="lblLocation" Content="" HorizontalAlignment="Left" Margin="579,257,0,0" VerticalAlignment="Top" Height="26"/>
                    <Label Content="Status:" HorizontalAlignment="Left" Margin="424,283,0,0" VerticalAlignment="Top" Height="26"/>
                    <Label x:Name="lblStatus" Content="" HorizontalAlignment="Left" Margin="579,283,0,0" VerticalAlignment="Top" Height="26"/>
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

    #Lost Focuses of TextBoxes
$var_txtUserName.Add_GotFocus({
    $var_txtUserName.FontStyle = 'Normal'
    if ($var_txtUserName.Text -eq "Enter a username or name*...") {
        $var_txtUserName.Clear() 
    }
 }) 
$var_txtUserName.Add_LostFocus({
     if ([string]::IsNullOrWhiteSpace($var_txtUserName.Text)) {
        $var_txtUserName.Text = "Enter a username or name*..."
        $var_txtUserName.FontStyle = 'Italic'
     }
})

$var_tbFirstName.Add_GotFocus({
    $var_tbFirstName.FontStyle = 'Normal'
    if ($var_tbFirstName.Text -eq "First") {
        $var_tbFirstName.Clear() 
    }
 }) 
$var_tbFirstName.Add_LostFocus({
     if ([string]::IsNullOrWhiteSpace($var_tbFirstName.Text)) {
        $var_tbFirstName.Text = "First"
        $var_tbFirstName.FontStyle = 'Italic'
     }
})
    
$var_tbLastName.Add_GotFocus({
    $var_tbLastName.FontStyle = 'Normal'
    if ($var_tbLastName.Text -eq "Last") {
        $var_tbLastName.Clear() 
        
    }
})

$var_tbLastName.Add_LostFocus({
    if ([string]::IsNullOrWhiteSpace($var_tbLastName.Text)) {
        $var_tbLastName.Text = "Last"
        $var_tbLastName.FontStyle = "Italic"
    }
})

$var_txtAssetTag.Add_GotFocus({
    $var_txtAssetTag.FontStyle = 'Normal'
    if ($var_txtAssetTag.Text -eq "Enter a SD Tag...") {
        $var_txtAssetTag.Clear() 
    }
 }) 
$var_txtAssetTag.Add_LostFocus({
     if ([string]::IsNullOrWhiteSpace($var_txtAssetTag.Text)) {
        $var_txtAssetTag.Text = "Enter a SD Tag..."
        $var_txtAssetTag.FontStyle = 'Italic'
     }
})

$var_tbClient.Add_GotFocus({
    $var_tbClient.FontStyle = 'Normal'
    if ($var_tbClient.Text -eq "Enter Client's Name...") {
        $var_tbClient.Clear() 
    }
 }) 
$var_tbClient.Add_LostFocus({
     if ([string]::IsNullOrWhiteSpace($var_tbClient.Text)) {
        $var_tbClient.Text = "Enter Client's Name..."
        $var_tbClient.FontStyle = 'Italic'
     }
})

$var_tbClientName.Add_GotFocus({
    $var_tbClientName.FontStyle = 'Normal'
    if ($var_tbClientName.Text -eq "New Client's Name...") {
        $var_tbClientName.Clear() 
    }
 }) 
$var_tbClientName.Add_LostFocus({
     if ([string]::IsNullOrWhiteSpace($var_tbClientName.Text)) {
        $var_tbClientName.Text = "New Client's Name..."
        $var_tbClientName.FontStyle = 'Italic'
     }
})

    #First tab for unlocking and showing users's information#
function ListUsers{
    $Filter=$var_txtUserName.Text + "*"
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
    $var_lblEmail.Content=$User.EmailAddress
    $var_lblPhone.Content=$User.OfficePhone
    $var_tbkAddress.Text=$User.StreetAddress
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
            $currentDN = $User.DistinguishedName
            $parentOU = $currentDN -replace "^.*?OU=Users - Disabled,",""
            $newOU = "OU=Users," + $parentOU
            Move-ADObject -Identity $currentDN -TargetPath $newOU
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
            $currentDN = $User.DistinguishedName
            $parentOU = $currentDN -replace "^.*?OU=Users,",""
            $newOU = "OU=Users - Disabled," + $parentOU
            Move-ADObject -Identity $currentDN -TargetPath $newOU
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
            "101" = "OU=Users,OU=OU101 | Amazon,OU=Clients,DC=NG,DC=LOCAL"
            "102" = "OU=Users,OU=OU102 | Microsoft,OU=Clients,DC=NG,DC=LOCAL"
            "103" = "OU=Users,OU=OU103 | Apple,OU=Clients,DC=NG,DC=LOCAL"
            "104" = "OU=Users,OU=OU104 | IBM,OU=Clients,DC=NG,DC=LOCAL"
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
               -StreetAddress $var_tbAddress.Text `
               -Country $var_cbCountry.SelectedItem.Content `
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
    }
    
}

$var_btnCreate.Add_Click({CreateUser})

    #Third Tab for OU Management

function CreateOU {
    try {
        $ParentOU = "OU=Clients,DC=NG,DC=LOCAL"
        $OUName = "OU" + $var_tbOUcode.Text + " | " + $var_tbClientName.Text
        New-ADOrganizationalUnit -Name $OUName -Path $ParentOU -ProtectedFromAccidentalDeletion $false
        $SubOUPath = "OU=$OUName,$ParentOU"
        New-ADOrganizationalUnit -Name "Users" -Path $SubOUPath -ProtectedFromAccidentalDeletion $false
        New-ADOrganizationalUnit -Name "Users - Disabled" -Path $SubOUPath -ProtectedFromAccidentalDeletion $false
        New-ADOrganizationalUnit -Name "Groups" -Path $SubOUPath -ProtectedFromAccidentalDeletion $false
        New-ADOrganizationalUnit -Name "Computers" -Path $SubOUPath -ProtectedFromAccidentalDeletion $false

        $var_lblOUMessage.Content="New OU has been created successfully!"
        $var_lblOUMessage.Foreground = [System.Windows.Media.Brushes]::Green
    }
    catch {
        $var_lblOUMessage.Content="Error: $($_.Exception.Message)"
        $var_lblOUMessage.Foreground = [System.Windows.Media.Brushes]::Red
    }
}

function ListClients{
    $ClientName = $var_tbClient.Text
    $OUs = Get-ADOrganizationalUnit -Filter "Name -like '*$ClientName*'" -SearchBase "OU=Clients,DC=NG,DC=LOCAL" -Properties Name

    $Columns = @(
        'Name'
        'DistinguishedName'
    )
    $OUDataTable = New-Object System.Data.DataTable
    $OUDataTable.Columns.AddRange($Columns)

    foreach ($OU in $OUs) {
        $Entry = @($OU.Name, $OU.DistinguishedName)
        $OUDataTable.Rows.Add($Entry)
    }

    $var_dgClientList.ItemsSource = $OUDataTable.DefaultView
}

function LoadClients{
    $Client=Get-ADOrganizationalUnit -Identity $($var_dgClientList.SelectedItem.DistinguishedName) -Server NG.LOCAL -Properties *
    $OUParts = $Client.Name -split " \| "
    $OUCode = $OUParts[0] -replace "^OU", ""
    $Company = $OUParts[1].Trim()
    $var_lblClientName.Content=$Company
    $var_lblOUIdentifier.Content=$OUCode
    $UsersOU = "OU=Users,$($Client.DistinguishedName)"
    $EnabledUsers = Get-ADUser -Filter {Enabled -eq $true} -SearchBase $UsersOU -Properties SamAccountName
    $var_lblUserCount.Content=$EnabledUsers.Count
    $DisabledUsersOU = "OU=Users - Disabled,$($Client.DistinguishedName)"
    $DisabledUsers = Get-ADUser -Filter {Enabled -eq $false} -SearchBase $DisabledUsersOU -Properties SamAccountName
    $var_lblUserCountInactive.Content=$DisabledUsers.Count
    $ComputersOU = "OU=Computers,$($Client.DistinguishedName)"
    $Computers = Get-ADComputer -Filter * -SearchBase $ComputersOU -Properties Name
    $var_lblComputerCount.Content =$Computers.Count
    $var_lblSubnet.Content="192.168." + $OUCode
    $var_lblVlan.Content=$OUCode
}

$var_btnSearchOU.Add_Click({ListClients})
$var_dgClientList.Add_SelectionChanged({LoadClients})
$var_btnCreateOU.Add_Click({CreateOU})

    #Fourth Tab for Assets lookup

function ImportFile {
    $openFileDialog = New-Object System.Windows.Forms.OpenFileDialog
    $openFileDialog.Filter = "Excel Files|*.xlsx;*.xlsm;*.xls"
    $openFileDialog.Title = "Select an Excel File"
    $openFileDialog.ShowDialog() | Out-Null
}

$var_btnImport.Add_Click({ImportFile})

$xamlForm.ShowDialog() | out-null