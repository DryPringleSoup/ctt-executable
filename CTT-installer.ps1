$repoUrl = "https://github.com/DryPringleSoup/ctt-executable/raw/main/"
$filePath = "CTT.exe"
$gitUrl = $repoUrl + $filePath #make raw file url

$desktopPath = [Environment]::GetFolderPath("Desktop") #get desktop folder path
$outputPath = Join-Path -Path $desktopPath -ChildPath $filePath #desktop file output path

try {
    Invoke-WebRequest -Uri $gitUrl -OutFile $outputPath #download the file
    Write-Host "File downloaded successfully: $outputPath" #report successful download
} catch {Write-Host "Error occurred: $_"}
