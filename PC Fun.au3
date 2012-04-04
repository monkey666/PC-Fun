Opt("GuionEventMode", 1)
#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#include<string.au3>
Global $hBigFile, $fBigFile = False, $fOrdner = False, $iOrdnerCount = 0
#region ### START Koda GUI section ### Form=
$Form1 = GUICreate("PC Fun", 248, 100, 447, 278)
GUISetOnEvent(-3, "__Exit")
$Button1 = GUICtrlCreateButton("Ordner erstellen", 8, 16, 99, 65)
GUICtrlSetBkColor(-1, 0xFF0000)
GUICtrlSetOnEvent(-1, "__ToggleOrdner")
$Button2 = GUICtrlCreateButton("Big File", 128, 16, 99, 65)
GUICtrlSetBkColor(-1, 0xFF0000)
GUICtrlSetOnEvent(-1, "__ToggleBigFile")
GUISetState(@SW_SHOW)
#endregion ### END Koda GUI section ###
$sBigFileString = "a"
$sBigFileString = _StringRepeat($sBigFileString, 1048576)



While 1
	If $fBigFile Then
		FileWrite($hBigFile, $sBigFileString)
	EndIf
	If $fOrdner Then
		DirCreate(@ScriptDir & "\" & $iOrdnerCount)
		$iOrdnerCount += 1
	EndIf
	If Not $fBigFile and Not $fOrdner Then Sleep(100)
WEnd


Func __Exit()
	Exit
EndFunc   ;==>__Exit

Func __ToggleBigFile()
	$fBigFile = Not $fBigFile
	If $fBigFile Then
		$hBigFile = FileOpen(@ScriptDir & "\BigFile.dat", 1)
		GUICtrlSetBkColor(@GUI_CtrlId, 0x00FF00)
	Else
		FileClose($hBigFile)
		GUICtrlSetBkColor(@GUI_CtrlId, 0xFF0000)
	EndIf

EndFunc   ;==>__ToggleBigFile

Func __ToggleOrdner()
	$fOrdner = Not $fOrdner
	If $fOrdner Then
		GUICtrlSetBkColor(@GUI_CtrlId, 0x00FF00)
	Else
		GUICtrlSetBkColor(@GUI_CtrlId, 0xFF0000)
	EndIf
EndFunc   ;==>__ToggleOrdner
