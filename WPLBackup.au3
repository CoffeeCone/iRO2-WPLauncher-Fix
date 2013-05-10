#NoTrayIcon
#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=ro2.ico
#AutoIt3Wrapper_UseUpx=n
#AutoIt3Wrapper_Change2CUI=y
#AutoIt3Wrapper_Res_Description=CoffeeCone
#AutoIt3Wrapper_Res_Fileversion=1.0.0.0
#AutoIt3Wrapper_Res_requestedExecutionLevel=highestAvailable
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****

ProcessWaitClose("WPLauncher.exe")
If FileMove("WPLauncher.exe","WPL1.bak") = 0 Then
	MsgBox(48, "Error", "Failed to backup.")
	Exit
EndIf
ConsoleWrite("Doing some housekeeping..." & @CRLF)

If FileExists("WPL2.bak") Then
	If FileMove("WPL2.bak","WPLauncher.exe") = 0 Then
		MsgBox(48, "Error", "Failed to fix.")
		Exit
	EndIf
EndIf
ConsoleWrite("Waiting for patch..." & @CRLF)

RunWait("RO2Client.exe")
If FileMove("WPLauncher.exe","WPL2.bak") = 0 Then
	MsgBox(48, "Error", "Process finished too early.")
	Exit
EndIf
ConsoleWrite("Finishing up..." & @CRLF)

If FileMove("WPL1.bak","WPLauncher.exe") = 0 Then
	MsgBox(48, "Error", "Failed to restore.")
	Exit
EndIf
ConsoleWrite("Done!" & @CRLF)
Sleep(1500)

