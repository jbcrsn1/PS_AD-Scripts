Add-Type -AssemblyName PresentationCore, PresentationFramework

# Create the main window
$window = New-Object Windows.Window
$window.Title = "AD_Provision_Tool"
$window.Height = 450
$window.Width = 800

# Create a Grid layout
$grid = New-Object Windows.Controls.Grid
$window.Content = $grid

# Row Definitions
$rowDef1 = New-Object Windows.Controls.RowDefinition
$rowDef1.Height = New-Object Windows.GridLength(187, [Windows.GridUnitType]::Star)
$rowDef2 = New-Object Windows.Controls.RowDefinition
$rowDef2.Height = New-Object Windows.GridLength(30, [Windows.GridUnitType]::Star)
$grid.RowDefinitions.Add($rowDef1)
$grid.RowDefinitions.Add($rowDef2)

# Column Definitions
$colDef1 = New-Object Windows.Controls.ColumnDefinition
$colDef2 = New-Object Windows.Controls.ColumnDefinition
$colDef3 = New-Object Windows.Controls.ColumnDefinition
$colDef4 = New-Object Windows.Controls.ColumnDefinition
$grid.ColumnDefinitions.Add($colDef1)
$grid.ColumnDefinitions.Add($colDef2)
$grid.ColumnDefinitions.Add($colDef3)
$grid.ColumnDefinitions.Add($colDef4)

# Create and configure the Label and TextBox controls
$labels = @(
    "Name:", "Job Title:", "Username:", "Password:", "Phone:", "Email:", "Website:", "Street:", "City:", "Zip:", "Country:", "Organizational Unit:", "Department:", "Manager:", "Company:"
)
$textboxes = @()

$positions = @(
    [System.Windows.Point]@(0,0), [System.Windows.Point]@(1,0), [System.Windows.Point]@(2,0), [System.Windows.Point]@(3,0),
    [System.Windows.Point]@(0,1), [System.Windows.Point]@(1,1), [System.Windows.Point]@(2,1), [System.Windows.Point]@(3,1),
    [System.Windows.Point]@(0,2), [System.Windows.Point]@(1,2), [System.Windows.Point]@(2,2), [System.Windows.Point]@(3,2),
    [System.Windows.Point]@(0,3), [System.Windows.Point]@(1,3), [System.Windows.Point]@(2,3)
)

# Creating Labels and Textboxes
for ($i=0; $i -lt $labels.Length; $i++) {
    # Create Label
    $label = New-Object Windows.Controls.Label
    $label.Content = $labels[$i]
    $label.HorizontalAlignment = [System.Windows.HorizontalAlignment]::Left
    $label.VerticalAlignment = [System.Windows.VerticalAlignment]::Top
    $label.Margin = New-Object Windows.Thickness(5, 5, 0, 0)
    $grid.Children.Add($label)
    [Windows.Controls.Grid]::SetRow($label, $i)
    [Windows.Controls.Grid]::SetColumn($label, 0)

    # Create TextBox
    $textbox = New-Object Windows.Controls.TextBox
    $textbox.HorizontalAlignment = [System.Windows.HorizontalAlignment]::Left
    $textbox.VerticalAlignment = [System.Windows.VerticalAlignment]::Top
    $textbox.Width = 120
    $textbox.Margin = New-Object Windows.Thickness(5, 5, 0, 0)
    $grid.Children.Add($textbox)
    [Windows.Controls.Grid]::SetRow($textbox, $i)
    [Windows.Controls.Grid]::SetColumn($textbox, 1)

    $textboxes += $textbox
}

# Create Status TextBlock
$status = New-Object Windows.Controls.TextBlock
$status.Name = "Status"
$status.Text = "Status"
$status.HorizontalAlignment = [System.Windows.HorizontalAlignment]::Left
$status.VerticalAlignment = [System.Windows.VerticalAlignment]::Top
$status.Margin = New-Object Windows.Thickness(5, 5, 0, 0)
$status.Width = 188
$status.Height = 235
$status.TextWrapping = [System.Windows.TextWrapping]::Wrap
$grid.Children.Add($status)
[Windows.Controls.Grid]::SetRow($status, 7)
[Windows.Controls.Grid]::SetColumn($status, 2)

# Create the Button to trigger "Create"
$createButton = New-Object Windows.Controls.Button
$createButton.Content = "Create"
$createButton.HorizontalAlignment = [System.Windows.HorizontalAlignment]::Left
$createButton.VerticalAlignment = [System.Windows.VerticalAlignment]::Top
$createButton.Margin = New-Object Windows.Thickness(5, 5, 0, 0)
$createButton.Width = 199
$createButton.Height = 37
$createButton.Background = "#FF67CCF7"
$grid.Children.Add($createButton)
[Windows.Controls.Grid]::SetRow($createButton, 8)
[Windows.Controls.Grid]::SetColumn($createButton, 0)
[Windows.Controls.Grid]::SetColumnSpan($createButton, 4)

# Add event handler for Button click
$createButton.Add_Click({
    # Get user input from textboxes
    $name = $textboxes[0].Text
    $jobTitle = $textboxes[1].Text
    $username = $textboxes[2].Text
    $password = $textboxes[3].Text
    $phone = $textboxes[4].Text
    $email = $textboxes[5].Text
    $website = $textboxes[6].Text
    $street = $textboxes[7].Text
    $city = $textboxes[8].Text
    $zip = $textboxes[9].Text
    $country = $textboxes[10].Text
    $orgUnit = $textboxes[11].Text
    $department = $textboxes[12].Text
    $manager = $textboxes[13].Text
    $company = $textboxes[14].Text

    # Display Status while creating user
    $status.Text = "Creating user $name..."

    # Example AD User Creation Logic
    try {
        # Create user in AD
        New-ADUser -SamAccountName $username `
                   -UserPrincipalName "$username@domain.com" `
                   -Name $name `
                   -GivenName $name `
                   -Surname $name `
                   -JobTitle $jobTitle `
                   -Department $department `
                   -Manager $manager `
                   -Company $company `
                   -OfficePhone $phone `
                   -EmailAddress $email `
                   -StreetAddress $street `
                   -City $city `
                   -PostalCode $zip `
                   -Country $country `
                   -OrganizationalUnit $orgUnit `
                   -Enabled $true `
                   -AccountPassword (ConvertTo-SecureString -AsPlainText $password -Force)

        $status.Text = "User $name created successfully!"
    } catch {
        $status.Text = "Error: $_"
    }
})

# Show the window
$window.ShowDialog()
