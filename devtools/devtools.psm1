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
function Open-Solution
{
	$currentDirectory = Get-Location
	$solutionFile = Get-ChildItem $currentDirectory | Where-Object { $_ -match '.sln$' }
	Invoke-Item $solutionFile.Name
}

Set-Alias -Name sln -Value Open-Solution

Export-ModuleMember -alias sln -function "Open-Solution"
