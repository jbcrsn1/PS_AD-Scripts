[void][System.Reflection.Assembly]::LoadWithPartialName('presentationframework')

# Place xaml code from visual studio in here string (in the blank line between @ symbols)
$input = @'
<Window x:Class="WpfApp3.MainWindow"
        xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        xmlns:d="http://schemas.microsoft.com/expression/blend/2008"
        xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006"
        xmlns:local="clr-namespace:WpfApp3"
        mc:Ignorable="d"
        Title="AD_Unlock" Height="450" Width="800">
    <Grid UseLayoutRounding="False">
        <Label x:Name="Label1" Content="Select User to Unlock" HorizontalAlignment="Left" Margin="92,36,0,0" VerticalAlignment="Top" FontFamily="Arial" FontSize="18"/>
        <Label x:Name="Label2" Content="Password Reset Info" HorizontalAlignment="Left" Margin="480,38,0,0" VerticalAlignment="Top" FontFamily="Arial" FontSize="16"/>
        <CheckBox x:Name="Check1" Content="Click here ato reset password" HorizontalAlignment="Left" Margin="459,74,0,0" VerticalAlignment="Top" FontFamily="Arial" FontSize="16"/>
        <Label x:Name="Label3" Content="Enter new password" HorizontalAlignment="Left" Margin="480,125,0,0" VerticalAlignment="Top" FontFamily="Arial" FontSize="16"/>
        <TextBox x:Name="NewPwd" HorizontalAlignment="Left" Margin="480,158,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="201"/>
        <Button x:Name="Button1" Content="Unlock User" HorizontalAlignment="Left" Margin="102,132,0,0" VerticalAlignment="Top" Height="61" Width="152"/>
        <TextBox x:Name="OutputBox" HorizontalAlignment="Center" Height="168" Margin="0,237,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="700" FontFamily="Lucida Console" VerticalScrollBarVisibility="Auto" AcceptsReturn="True"/>
        <ComboBox x:Name="LockedUsers" HorizontalAlignment="Left" Margin="97,75,0,0" VerticalAlignment="Top" Width="173"/>

    </Grid>
</Window>
'@

$input = $input -replace '^<Window.*', '<Window' -replace 'mc:Ignorable="d"','' -replace "x:N",'N' 
[xml]$xaml = $input
$xmlreader=(New-Object System.Xml.XmlNodeReader $xaml)
$xamlForm=[Windows.Markup.XamlReader]::Load( $xmlreader )

$xaml.SelectNodes("//*[@Name]") | ForEach-Object -Process {
    Set-Variable -Name ($_.Name) -Value $xamlForm.FindName($_.Name)
    }

# code to run before button click event
#-----------------------------------



# code to run when button is clicked
#-----------------------------------


$xamlForm.ShowDialog() | out-null