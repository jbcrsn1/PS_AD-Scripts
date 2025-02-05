# Import the Active Directory module
Import-Module ActiveDirectory

# Read the list of names (First Last) from the text file
$USER_FIRST_LAST_LIST = Get-Content .\users.txt

# Loop through each name in the list
foreach ($name in $USER_FIRST_LAST_LIST) {
    # Attempt to get the user by the First and Last name
    try {
        $user = Get-ADUser -Filter {Name -eq $name} -Properties *

        # If user is found, output the desired information (e.g., Name, Username, Email, etc.)
        if ($user) {
            Write-Host "User found: $($user.Name)"
            Write-Host "Username: $($user.SamAccountName)"
            Write-Host "Email: $($user.EmailAddress)"
            Write-Host "Department: $($user.Department)"
            Write-Host "Title: $($user.Title)"
            Write-Host "Last Logon: $($user.LastLogonDate)"
            Write-Host "----------------------------------------"
        }
    }
    catch {
        Write-Warning "User not found: $name"
    }
}