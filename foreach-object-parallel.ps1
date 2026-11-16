# https://devblogs.microsoft.com/powershell/powershell-foreach-object-parallel-feature/
rem 1..5 | ForEach-Object -Parallel { "Hello $_"; sleep 1; } -ThrottleLimit 5 
rem (Measure-Command {
1..5 | ForEach-Object -Parallel { "Hello $_"; sleep 1; } -ThrottleLimit 5 
}).Seconds

foreach-object -parallel {
	optimize-VHD -path C:\Users\michael\AppData\Local\Packages\CanonicalGroupLimited.Ubuntu24.04LTS_79rhkp1fndgsc\LocalState\ext4.vhdx -Mode Full
	optimize-VHD -path C:\Users\michael\wsl-rhel\wsl-rhel9\ext4.vhdx -Mode Full
} -throttlelimit 5


