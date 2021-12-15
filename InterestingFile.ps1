Import-Module .\InterestingModule.psm1

Write-Host "Hello World"
Write-Host ("Today it is {0}" -f (Get-Date).ToString())
$message = Get-Age
Write-Host $message

# add header
$message = "MESSAGE on {0} `{1}" -f (Get-Date |Out-String), $message
# store message
$message | Out-File ".\statement.txt"
Write-Host "Written message to .\statement.txt"

Write-Host "Program done"