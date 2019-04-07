<#
 .Synopsis
  Opens the first visual studio solution found in the current directory.

 .Description
  When executed in a directory containing a visual studio solution, launches that solution using the default action for .sln files.

 .Example
   # Open the solution located in the current directory using the full command.
   Open-Solution
 .Example
   # Open the solution located in the current directory using the alias.
   sln
#>
function Open-Solution {
    Set-StrictMode -Version 2.0

    $currentDirectory = Get-Location
  
    $numberOfSolutionFiles = Get-ChildItem -Name | Where-Object { $_ -match '.sln$' } | Measure-Object | ForEach-Object { $_.Count }   
    
    if ($numberOfSolutionFiles -eq 0) {
        Write-Host 'No solution file found'
    }
    elseif ($numberOfSolutionFiles -eq 1) {
        $solutionFile = Get-ChildItem $currentDirectory -Name | Where-Object { $_ -match '.sln$' }
        Write-Host "Opening $solutionFile"
    }
    else {
        $solutionFile = Get-ChildItem $currentDirectory -Name | Where-Object { $_ -match '.sln$' } | Select-Object -First 1
        Write-Host "Multiple solution files found. Opening $solutionFile"
    }    
}