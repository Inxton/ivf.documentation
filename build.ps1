param($buildNumber) 

$version = $buildNumber

# Clean build
rm -r bin/ -erroraction silentlycontinue 
rm -r obj/ -erroraction silentlycontinue 
rm -r docs/ -erroraction silentlycontinue 

# Build docu
dotnet build -v n


<#
/NFL : No File List - don't log file names.
/NDL : No Directory List - don't log directory names.
/NJH : No Job Header.
/NJS : No Job Summary.
/NP  : No Progress - don't display percentage copied.
/NS  : No Size - don't log file sizes.
/NC  : No Class - don't log file classes.
#>
if(!(Test-Path history\$version))
{
    robocopy  docs history\$version /e /NFL /NDL /NJH  /nc /ns /np /IS
}
# Create history linkes
## Get the historical versions and create links.
$historyItems = (Get-ChildItem .\history -n -dir)
[array]::Reverse($historyItems)
$historyMD = "# Previous versions `n"
foreach ($item in $historyItems){
    $historyMD+="[$item](../../history/$item/index.html)`n`n" 
}

# Write the to a file.
$historyMD > .\previous_versions\index.md

# Build docu again to get the version in previous versions.
dotnet build -v q
# Start-Process .\_site\index.html
