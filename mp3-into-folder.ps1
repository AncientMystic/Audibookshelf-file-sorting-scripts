# List all MP3 files in current directory using Get-ChildItem cmdlet
$mp3Files = Get-ChildItem -Filter "*.mp3" 

# Loop through each MP3 file, check its name for any pattern (e.g., track number) 
foreach ($file in $mp3Files) {
    # Extract file name without extension
    $fileNameWithoutExtension = $file.BaseName.Split('.')[0]

    # Create folder with the same name as the MP3 file
    New-Item -ItemType Directory -Force -Path "$($fileNameWithoutExtension)"

    # Move MP3 file to corresponding folder
    Move-Item -Path "$($file.FullName)" -Destination "$($fileNameWithoutExtension)\$($fileNameWithoutExtension).mp3"
}