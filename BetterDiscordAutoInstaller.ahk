#Requires AutoHotkey v2.0
SetTitleMatchMode(2)

windowName := "BetterDiscord Installer"

; Run BetterDiscord installer
Run A_Desktop "\..\Downloads\BetterDiscord-Windows.exe"

; Wait for the installer window to appear
WinWait windowName, , 10
if !WinExist(windowName) {
    MsgBox "BetterDiscord installer window not found!"
    ExitApp
}

; Focus the window
WinActivate windowName
WinWaitActive windowName, , 5

; Wait for the installer to load
Sleep 3000

; Step 1: Click license agreement checkbox
Click 30, 285
Sleep 500

; Click Next button
Click 505, 315
Sleep 1500

; Step 2: Click Next again
Click 505, 315
Sleep 1500

; Step 3: Click installation option
Click 245, 100
Sleep 500

; Click Install button
Click 505, 315
Sleep 5000

; Step 4: Keep clicking Close button until window closes
maxAttempts := 100
attempts := 0

while WinExist(windowName) && (attempts < maxAttempts) {
    WinActivate windowName
    Click 500, 315
    Sleep 250
    attempts++
}

ExitApp