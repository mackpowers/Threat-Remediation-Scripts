Stop-Process -name "wavebrowser"
Get-ScheduledTask | Where-Object -Property TaskName -like "*wave*browser*" | Stop-ScheduledTask -TaskName $_.TaskName | Disable-ScheduledTask -TaskName $_.TaskName | Unregister-ScheduledTask -TaskName $_.TaskName
Get-ChildItem $env:USERPROFILE\*wave*browser* | Remove-Item -Recurse
Get-ChildItem $env:USERPROFILE\Desktop\*wave*browser* | Remove-Item -Recurse
