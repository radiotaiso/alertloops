@ECHO off
for /l %%x in (1, 1, 5) do (
	start notepad.exe 
	ping 100.1.1.255 -n 1 -w 5000 > nul
	Taskkill /IM notepad.exe /F
)
Exit