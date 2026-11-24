# https://www.sharepointdiary.com/2021/04/powershell-while-loop.html
$serviceName = "spooler"
$desiredState = "Running"
$timeout = 3600 # seconds
$startTime = Get-Date
 
$service = Get-Service -Name $serviceName
while ($service.Status -ne $desiredState) {
    $currentTime = Get-Date
    $elapsedTime = ($currentTime - $startTime).TotalSeconds
     
    if ($elapsedTime -gt $timeout) {
        Write-Host "Timeout reached. Service did not enter $desiredState state." -ForegroundColor Yellow
        break
    }
     
    Write-Host "Service $serviceName is currently $($service.Status). Waiting..."
    Start-Sleep -Seconds 3600
    $service = Get-Service -Name $serviceName
}
 
if ($service.Status -eq $desiredState) {
    Write-Host "Service $serviceName is now $desiredState!" -ForegroundColor Green
    Start-Sleep -Seconds 60
}