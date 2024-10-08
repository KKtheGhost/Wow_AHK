#Requires AutoHotkey v2.0
#Warn  ; Enable warnings to assist with detecting common errors.
SetWorkingDir A_ScriptDir  ; Ensures a consistent starting directory.

; 全局变量
isRunning := false

; 热键设置
XButton2::  ; 鼠标第5键（前进键）
{
    global isRunning := !isRunning
    if (isRunning) {
        SetTimer MainLoop, 30
        ToolTip "脚本已启动"
	SetTimer () => ToolTip(), -3000
    } else {
        SetTimer MainLoop, 0
        ToolTip "脚本已停止"
	SetTimer () => ToolTip(), -3000
    }
}

; 主循环
MainLoop()
{
    ; 活化烈焰
    color := PixelGetColor(1909, 1496)
    if (color = 0xFFDB9B) {
        Send "{F1}"
    }

    ; 狂龙之怒
    color := PixelGetColor(1913, 1490)
    if (color = 0xCB2B31) {
        Send "{F2}"
    }

    ; 永恒之涌
    color := PixelGetColor(1888, 1480)
    if (color = 0x5A8EF7) {
        Send "{F3}"
    }

    ; 火焰吐息
    color := PixelGetColor(1897, 1474)
    if (color = 0xE45E46) {
        Send "{F4}"
    }

    ; 扭转天平
    color := PixelGetColor(1897, 1472)
    if (color = 0xDA9244) {
        Send "{F5}"
    }

    ; 碎裂星辰
    color := PixelGetColor(1891, 1515)
    if (color = 0x1D0D1D) {
        Send "{F6}"
    }

    ; 裂解
    color := PixelGetColor(1895, 1497)
    if (color = 0x4D30B2) {
        Send "{F7}"
    }

    ; 翡翠之花
    color := PixelGetColor(1885, 1479)
    if (color = 0x16845F) {
        Send "{F8}"
    }

    ; 碧蓝打击
    color := PixelGetColor(1901, 1503)
    if (color = 0x2A5EC8) {
        Send "{F9}"
    }

    ; 葬火
    color := PixelGetColor(1904, 1482)
    if (color = 0x530D10) {
        Send "{F10}"
    }

    ; 深呼吸
    color := PixelGetColor(1936, 1465)
    if (color = 0xC7FFD9) {
        Send "{F11}"
    }
}

; 脚本结束时自动关闭提示
OnExit ExitFunc

ExitFunc(ExitReason, ExitCode)
{
    ToolTip
}