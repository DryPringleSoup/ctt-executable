# Function to run a command in elevated mode
function Run-CommandElevated {
    param(
        [Parameter(Mandatory=$true)]
        [string]$Command
    )
    
    # Create a new ProcessStartInfo object
    $psi = New-Object System.Diagnostics.ProcessStartInfo
    $psi.FileName = "powershell.exe"
    $psi.Arguments = "-NoProfile -ExecutionPolicy Bypass -Command `"$Command`""
    $psi.Verb = "RunAs"
    
    # Start the process
    [System.Diagnostics.Process]::Start($psi) | Out-Null
}

# Define the command to execute
$commandToExecute = "iwr -useb https://christitus.com/win | iex"

# Run the command in elevated mode
Run-CommandElevated -Command $commandToExecute
