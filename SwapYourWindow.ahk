#Requires AutoHotkey v2.0
CoordMode "Mouse", "Screen"
SetDefaultMouseSpeed 0
SetWinDelay -1
SetMouseDelay -1

!Shift::
    {
        MouseGetPos &cur_x, &cur_y, &cur_win
        WinGetPos &cur_win_x, &cur_win_y, &cur_win_h, &cur_win_w, cur_win
        if (cur_x-cur_win_x) <= cur_win_w AND (cur_y-cur_win_y) <= 40
            {
                mouse_left_button_is_pushed := KeyWait("LButton", "D T1")
                if mouse_left_button_is_pushed
                    {
                        SetTimer WatchMouse, 2000

                        WatchMouse()
                        {
                            if !GetKeyState("LButton","P")
                            {
                                SetTimer , 0
                                WinMove cur_win_x, cur_win_y, cur_win_h, cur_win_w, cur_win
                                MouseGetPos &tar_x, &tar_y, &tar_win
                                WinGetPos &tar_win_x, &tar_win_y, &tar_win_h, &tar_win_w, tar_win
                                WinMove tar_win_x, tar_win_y, tar_win_h, tar_win_w, cur_win
                                WinMove cur_win_x, cur_win_y, cur_win_h, cur_win_w, tar_win
                                MouseMove tar_x, tar_y
                                WinMoveTop cur_win
                                WinMoveTop tar_win
                                return
                            }
                        }
                    }
            }
    }