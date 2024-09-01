$repoUrl = "https://github.com/DryPringleSoup/ctt-executable/raw/main/"
$filePath = "CTT.exe"
$gitUrl = $repoUrl + $filePath
$desktopPath = [Environment]::GetFolderPath("Desktop")
$outputPath = Join-Path -Path $desktopPath -ChildPath $filePath

try {
    Invoke-WebRequest -Uri $gitUrl -OutFile $outputPath
    Write-Host "File downloaded successfully: $outputPath"
} catch {Write-Host "Error occurred: $_"}
