#Requires AutoHotkey v2.0
Persistent(true)
SetTitleMatchMode(2)

while (!WinExist("Redragon")) {
    Sleep(1000)
}

; Minimize Redragon window
while (WinExist("Redragon")) {
    ControlClick "Button1"
    Sleep(1000)
}

Persistent(false)
ExitApp