Import-Module .\InterestingModule.psm1

Write-Host "Hello World"
$message = Get-Age
Write-Host $message

$message | Out-File ".\statement.txt"

Write-Host "Program done"