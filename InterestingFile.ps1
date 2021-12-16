Import-Module .\InterestingModule.psm1

Write-Host "Hello World"
Write-Host ("Today it is {0}" -f (Get-Date).ToString())

Write-Host "-----------------------------------"
Get-Age

Write-Host "-----------------------------------"
$maxIterations = Read-Host "Maximum number? "
Show-IterateNumbers($maxIterations)

Write-Host "-----------------------------------"
Write-Host "Program done"