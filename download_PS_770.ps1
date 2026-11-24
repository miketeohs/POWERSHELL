# $VERSION="7.3.4"
#write-host $args[0]
# https://github.com/PowerShell/PowerShell/releases/download/v7.3.4/PowerShell-7.3.4-win-x64.msi
$VERSION=$args[0]
write-host "Version is =", $VERSION
# exit 0
# http://woshub.com/install-update-powershell-windows/
# https://www.delftstack.com/howto/powershell/command-line-arguments-in-powershell/
# Invoke-WebRequest -uri https://github.com/PowerShell/PowerShell/releases/download/v$VERSION/PowerShell-$VERSION-win-x64.msi -OutFile PowerShell-$VERSION-win-x64.msi
invoke-webRequest -Uri "https://github.com/PowerShell/PowerShell/releases/download/v$VERSION/PowerShell-$VERSION-win-x86.zip" -outfile Powershell-$VERSION.zip
ECHO $VERSION DOWNLOAD COMPLETE
# msiexec.exe /package PowerShell-$VERSION-win-x86.msi /quiet ADD_EXPLORER_CONTEXT_MENU_OPENPOWERSHELL=1 ENABLE_PSREMOTING=1 REGISTER_MANIFEST=1
