get-ciminstance -classname win32_product | ft -AutoSize | Out-File -path d:\vmware-installed-programs.csv
OR using wmic product get name,caption,vendor,version)
