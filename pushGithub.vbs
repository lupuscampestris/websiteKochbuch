
Dim objShell
Set objShell = WScript.CreateObject("WScript.Shell")

' Change to the directory of your Git repository
'Dim repoPath
'repoPath = "C:\path\to\your\git\repository"
'objShell.CurrentDirectory = repoPath


Dim gitCommand
Dim cmd, output
' Git commit command
gitCommand = "git add -A "
' Run the Git command and display the output in the command window
WScript.Echo gitCommand
Set cmd = objShell.Exec(gitCommand)
Do While Not cmd.StdOut.AtEndOfStream
    output = cmd.StdOut.ReadLine()
    WScript.Echo output
Loop

' Git commit command

gitCommand = "git commit -m " & """" & Date &""""
' Run the Git command and display the output in the command window
WScript.Echo gitCommand
Set cmd = objShell.Exec(gitCommand)
Do While Not cmd.StdOut.AtEndOfStream
    output = cmd.StdOut.ReadLine()
    WScript.Echo output
Loop

' Git commit command
gitCommand = "git push"
' Run the Git command and display the output in the command window
WScript.Echo gitCommand
Set cmd = objShell.Exec(gitCommand)
Do While Not cmd.StdOut.AtEndOfStream
    output = cmd.StdOut.ReadLine()
    WScript.Echo output
Loop