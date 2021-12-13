Import-Module .\InterestingModule.psm1

Write-Host "Hello World"

# do function
$message = Get-Age
Write-Host $message

# add header
$message = "MESSAGE on {0} `{1}" -f (Get-Date |Out-String), $message
# store message
$message | Out-File ".\statement.txt"

Write-Host "Program done"