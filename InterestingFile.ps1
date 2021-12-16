Import-Module .\InterestingModule.psm1

# greeting
Write-Host "Hello World"
Write-Host ("Today it is {0}" -f (Get-Date).ToString())
Write-Host "-----------------------------------"
$message = Get-Age
Write-Host $message

# add header
$message = "MESSAGE on {0} `{1}" -f (Get-Date |Out-String), $message
# store message
$message | Out-File ".\statement.txt"
Write-Host "Written message to .\statement.txt"

# print colors
Write-Host "-----------------------------------"
Show-Colorz

Write-Host "Program done"