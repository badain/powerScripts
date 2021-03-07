$Directory = Get-Location #Set Directory
$Files = Get-ChildItem $Directory | Where-Object {$_.Name -like "*.jpg"} #Specify FileTypes
$Size = 1334
ForEach ($File in $Files) {
    magick $File -resize $Size $File
}