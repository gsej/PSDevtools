. $PSScriptRoot\OpenSolution.ps1
Set-Alias -Name sln -Value Open-Solution
Export-ModuleMember -alias sln -function "Open-Solution"

. $PSScriptRoot\SetFileDates.ps1
Set-Alias touch Set-FileDates
Export-ModuleMember -alias touch -function "Set-FileDates"