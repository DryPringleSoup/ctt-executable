function Run-CommandElevated {
    param(
        [Parameter(Mandatory=$true)]
        [string]$Command
    )
    
    $psi = New-Object System.Diagnostics.ProcessStartInfo
    $psi.FileName = "powershell.exe"
    $psi.Arguments = "-NoProfile -ExecutionPolicy Bypass -Command `"$c`""
    $psi.Verb = "RunAs"
    
    [System.Diagnostics.Process]::Start($psi) | Out-Null
}

Run-CommandElevated -c "iwr -useb https://christitus.com/win | iex"
