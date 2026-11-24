$a = 0
1..100 | ForEach-Object {
    Write-Progress -Id 1 -Activity 'AllUsersCurrentHosts' -PercentComplete $_
    $a += (Measure-Command {
        pwsh -command 1
    }).TotalMilliseconds
}
Write-Progress -id 1 -activity 'profile' -Completed
$a/100 - $p
# AllUsersAllHosts, AllUsersCurrentHosts 1345.580077, CurrentUserAllHosts 873.143271, CurrentUserCurrentHosts 943.725343