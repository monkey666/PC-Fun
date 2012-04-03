Opt("GuionEventMode", 1)
#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>

$fBigFile=False
$fOrdner=False
#Region ### START Koda GUI section ### Form=
$Form1 = GUICreate("PC Fun", 248, 100, 447, 278)
GUISetOnEvent(-3, "__Exit")
$Button1 = GUICtrlCreateButton("Ordner erstellen", 8, 16, 99, 65)
GUICtrlSetBKColor(-1, "0xFF0000")
GUICtrlSetOnEvent(-1, "__ToggleOrdner")
$Button2 = GUICtrlCreateButton("Big File", 128, 16, 99, 65)
GUICtrlSetBKColor(-1, "0xFF0000")
GUICtrlSetOnEvent(-1, "__ToggleBigFile")
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

While 1

WEnd


func __Exit()
	Exit
EndFunc

Func __ToggleBigFile()
EndFunc

Func __ToggleOrdner()
EndFunc
