Function Get-Age {
    $name = [string] (Read-Host "Enter your name! ")
    $age = [int] (Read-Host "Enter your age! ")
    return "Your name is $name and you are $age years old."
}