# Set-ShortCut "C:\Program Files (x86)\ColorPix\ColorPix.exe" "$Home\Desktop\ColorPix.lnk"
# https://ttm.financial/m/news/2435426542?lang=en_US&edition=fundamental
# Alphabet Debuts Beefed-Up AI Search and Chatbot as Competition Heats Up

param ( [string]$SourceExe, [string]$DestinationPath )

$WshShell = New-Object -comObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut($DestinationPath)
$Shortcut.TargetPath = $SourceExe
$Shortcut.Save()