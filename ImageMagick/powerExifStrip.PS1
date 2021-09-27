$Directory = Get-Location #Set Directory
$Files = Get-ChildItem $Directory | Where-Object {$_.Name -like "*.jpg"} #Specify FileTypes
ForEach ($File in $Files) {
    magick $File -strip $File
}