oh-my-posh init pwsh --config '~\.config\oh-my-posh\wholespace.omp.json' | Invoke-Expression
Import-Module -Name Terminal-Icons
Set-PSReadLineOption -Colors @{ "Selection" = "`e[7m" }
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
carapace _carapace | Out-String | Invoke-Expression
