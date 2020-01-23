#include <HotKey.au3>
#include <AutoItConstants.au3>

Global $prevWin = ""
Global Const $consoleWin = "[CLASS:vcxsrv/x X rl]"
Global Const $consoleWinWidth = 1719
Global Const $consoleWinHeight = 956
Global Const $topLeftX = -6
Global Const $topLeftY = -30
Global Const $VK_F12 = 0x7B
_HotKey_Assign($VK_F12, 'ToggleConsole')

While 1
    Sleep(10)
WEnd

Func ToggleConsole()
    Local $state = WinGetState($consoleWin)
    If BitAND($state, $WIN_STATE_ACTIVE) Then
        WinMove($consoleWin, "", $topLeftX - $consoleWinWidth, $topLeftY, $consoleWinWidth, $consoleWinHeight)
        WinActivate($prevWin)
    Else
        $prevWin = WinGetHandle("[ACTIVE]")
        WinMove($consoleWin, "", $topLeftX, $topLeftY, $consoleWinWidth, $consoleWinHeight)
        WinActivate($consoleWin)
    EndIf
EndFunc
