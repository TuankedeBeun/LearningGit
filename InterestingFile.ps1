Import-Module .\InterestingModule.psm1

Write-Host "Hello World"
$message = Get-Age
Write-Host $message

Write-Host "Program done"