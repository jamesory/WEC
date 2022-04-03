Get-WinEvent -FilterHashTable @{LogName='forwardedevents';ID=1121,1122,1123,1124,1125,1126; StartTime=(get-date).AddHours(-24)} | export-csv  D:\logs\ASRlog.csv -NoTypeInformation; Send-MailMessage  -SmtpServer "email server" -Subject "Daily Server Event ASR Event Capture" -From "email@domain.com" -To "email@domain.coom" -Attachments d:\logs\asrlog.csv


Get-WinEvent -FilterHashTable @{LogName='forwardedevents';ID='1000'; StartTime=(get-date).AddHours(-24)} | export-csv  D:\logs\1000log.csv -NoTypeInformation; Send-MailMessage  -SmtpServer "email@domain.com" -Subject "Daily Server Event Log 1000 Crash" -From "email@domain.co" -To "email@domain.com" -Attachments d:\logs\1000log.csv





