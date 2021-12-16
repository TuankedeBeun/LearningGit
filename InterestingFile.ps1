Import-Module .\InterestingModule.psm1

# greeting
Write-Host "Hello World"
Write-Host ("Today it is {0}" -f (Get-Date).ToString())

Write-Host "-----------------------------------"
Get-Age

Write-Host "-----------------------------------"
$maxIterations = Read-Host "Maximum number? "
Show-IterateNumbers($maxIterations)

# print colors
Write-Host "-----------------------------------"
Show-Colors

Write-Host "-----------------------------------"
Write-Host "Program done"