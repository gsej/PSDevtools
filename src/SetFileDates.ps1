<#
 .Synopsis
  Basic version of the Unix touch command

 .Description
  If the specified file exists, updates the last access and last write time, and if it doesn't exist, it creates and empty file of that name.

 .Example  
   Set-FileDates newfile.txt
 .Example
   # Using the alias.
   touch newfile.txt
#> 
Function Set-FileDates {
    Set-StrictMode -Version 2.0
    $file = $args[0]
    if ($null -eq $file) {
        throw "No filename supplied"
    }
	
    $currentLocation = Get-Location
	
    $fullPath = [System.IO.Path]::Combine($currentLocation, $file)

    if (Test-Path $fullPath) {
        $date = Get-Date
        (Get-ChildItem $fullPath).LastAccessTime = $date
        (Get-ChildItem $fullPath).LastWriteTime = $date
    }
    else {
        [System.IO.File]::Create($fullPath) | Out-Null        
    }
}