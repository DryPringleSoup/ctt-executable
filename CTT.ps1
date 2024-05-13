function Run-CommandElevated {
    param(
        [Parameter(Mandatory=$true)]
        [string]$Command
    )
    
    $psi = New-Object System.Diagnostics.ProcessStartInfo
    $psi.FileName = "powershell.exe"
    $psi.Arguments = "-NoProfile -ExecutionPolicy Bypass -Command `"$Command`""
    $psi.Verb = "RunAs"
    
    [System.Diagnostics.Process]::Start($psi) | Out-Null
}

$commandToExecute = "iwr -useb https://christitus.com/win | iex"
Run-CommandElevated -Command $commandToExecute
