$sourceDir = Read-Host "Enter source directory path"
Write-Host "Source Directory: $sourceDir"
$mp3Files = Get-ChildItem -Path "$sourceDir" -Recurse -Include *.mp3

foreach ($file in $mp3Files) {
    $directory = Split-Path -Path $file.FullName
    $fileName = [System.IO.Path]::GetFileNameWithoutExtension($file.FullName)

    if (-Not (Test-Path "$directory\$fileName")) {
        New-Item -ItemType Directory -Force -Path "$directory\$fileName"
        Move-Item $file.FullName "$directory\$fileName\$($file.Name)"
    }
}
pause