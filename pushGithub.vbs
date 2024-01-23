Set oShell = WScript.CreateObject("WScript.Shell")


oShell.Run "git add -A", 0, 1 'hidden, wait

strRun = "git commit -m " & """" & Date &"""" 
oShell.Run strRun, 0, 1 'hidden, wait

'oShell.Run "git push", 0, 1 'hidden, wait
