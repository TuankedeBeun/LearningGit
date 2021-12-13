Function Get-Age {
    $name = [string] (Read-Host "Enter your name! ")
    $age = [int] (Read-Host "Enter your age! ")
    
    # assessment
    if($age -ge 18) {
        Write-Host "Pretty old, dude"
    } else {
        Write-Host "Get on, young lad!"
    }

    return "Your name is $name and you are $age years old."
}