Function Get-Age {
    $name = [string] (Read-Host "Enter your name! ")
    $age = [int] (Read-Host "Enter your age! ")
    
    # assessment
    if($age -ge 18) {
        Write-Host "Pretty old, dude"
    } else {
        Write-Host "Get on, young lad!"
    }

    # check for godly presence
    if($name -eq "Tuanke") {
        $message = "Hello $age-year old God!"
    } else {
        $message = "Your name is $name and you are $age years old."
    }
    
    # add header
    $messageToFile = "MESSAGE on {0} `{1}" -f (Get-Date |Out-String), $message
    # store message
    $messageToFile | Out-File ".\statement.txt"
    Write-Verbose "Written message to .\statement.txt"

    return $message

    <#
        .SYNOPSIS
        Super interesting function thta checks your age and returns an answer based on a complex algorithm
    #>
}

Function Show-Colors {

    # load colors
    Write-Host 'Importing colors'
    $colorObject = (Import-Csv -Path '.\data\colors.csv' -Delimiter ',' -Header index,color)

    foreach($color in $colorObject){
        Write-Host ("{0} - {1}" -f $color.index,$color.color)
    }

    <#
        .SYNOPSIS
        Prints out all colors from a csv file
    #>
}

Function Show-IterateNumbers {
    param([int]$maxInt, [int]$interval=1)

    for($it=0; $it -lt $maxInt; $it += $interval){
        Write-Host "number $it"
    }
    <#
        .SYNOPSIS
        Print all numbers until a given maximum
    #>
}