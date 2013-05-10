#NoTrayIcon
#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=ro2.ico
#AutoIt3Wrapper_UseUpx=n
#AutoIt3Wrapper_Change2CUI=y
#AutoIt3Wrapper_Res_Description=CoffeeCone
#AutoIt3Wrapper_Res_Fileversion=1.0.0.0
#AutoIt3Wrapper_Res_requestedExecutionLevel=highestAvailable
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****

ConsoleWrite('Preparing...' & @CRLF)
If FileExists('WPLBackup.exe') Then
	Run('WPLBackup.exe')
Else
	MsgBox(48, "Error", "Can't find WPLBackup.exe.")
EndIf