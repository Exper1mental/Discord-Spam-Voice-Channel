 
Local $radius = 300
Local $originX = @DeskTopWidth / 2
Local $originY = @DeskTopHeight / 2
Local $count = 1
Local $speed = 5
Local $loop_count = 6

Opt("WinTitleMatchMode", 2)
Local $d_size = WinGetPos(" - Discord")
Local $d_win = WinWait(" - Discord", "", 5)

Local $mouseJoinX = $d_size[0] + 200 ;~ -1366 ;~ -70
Local $mouseJoinY = $d_size[1] + $d_size[3] - 85 ;~ 1214 ;~ 400
Local $mouseLeaveX = $d_size[0] + 295 ;~435
Local $mouseLeaveY = $d_size[1] + $d_size[3] - 110
;~ MsgBox(0, "Active window stats (x,y,width,height):", $size[0] & " " & $size[1] & " " & $size[2] & " " & $size[3])

Local $discordJoinX = 200
Local $discordJoinY = 930


HotKeySet("{ESC}", "Terminate")
Func Terminate()
    Exit 0
EndFunc

Func DiscordClick()
    MouseClick("left", $mouseJoinX, $mouseJoinY, $count, $speed)
    MouseClick("left", $mouseLeaveX, $mouseLeaveY, $count, $speed)
EndFunc

ControlFocus($d_win, "", "")
For $counter = 1 to $loop_count
    DiscordClick()
Next