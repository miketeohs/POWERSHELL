systeminfo | findstr /C:"Total Physical Memory"
rem wmic memorychip get devicelocator, capacity
rem wmic memorychip get devicelocator, partnumber
rem wmic memorychip get devicelocator, manufacturer
(Get-CimInstance Win32_PhysicalMemory | Measure-Object -Property capacity -Sum).sum /1gb
get-ciminstance -class "cim_physicalmemory" | % {$_.Capacity}
