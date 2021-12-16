Function Get-Age {
    $name = [string] (Read-Host "Enter your name! ")
    $age = [int] (Read-Host "Enter your age! ")
    
    # assessment
    if($age -ge 18) {
        Write-Host "Pretty old, dude"
    } else {
        Write-Host "Get on, young lad!"
    }

    if($name -eq "Tuanke") {
        $message = "Hello $age-year old God!"
    } else {
        $message = "Your name is $name and you are $age years old."
    }
    return $message

    <#
        .SYNOPSIS
        Super interesting function thta checks your age and returns an answer based on a complex algorithm
    #>
}

Function Show-Colorz {

    # load colors
    Write-Host 'Importing colors'
    $colorObject = (Import-Csv -Path '.\colors.csv' -Delimiter ',' -Header index,color)

    foreach($color in $colorObject){
        Write-Host ("{0} - {1}" -f $color.index,$color.color)
    }

    <#
        .SYNOPSIS
        Prints out all colors from a csv file
    #>
}