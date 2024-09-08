﻿#Requires AutoHotkey v2.0
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
    ; 寒冰箭
    color := PixelGetColor(1902, 1466)
    if (color = 0x747EE3) {
        Send "{F2}"
    }

    ; 冰冷血脉
    color := PixelGetColor(1919, 1502)
    if (color = 0x7FFBFF) {
        Send "{F10}"
    }

    ; 冰风暴
    color := PixelGetColor(1906, 1492)
    if (color = 0x3C97FD) {
        Send "{F4}"
    }

    ; 寒冰宝珠
    color := PixelGetColor(1919, 1492)
    if (color = 0x30E0FF) {
        Send "{F3}"
    }

    ; 变易幻能
    color := PixelGetColor(1894, 1475)
    if (color = 0x072868) {
        Send "{F8}"
    }

    ; 冰枪术
    color := PixelGetColor(1909, 1476)
    if (color = 0xE6F7FF) {
        Send "{F1}"
    }

    ; 冰霜射线
    color := PixelGetColor(1908, 1503)
    if (color = 0x1F2B72) {
        Send "{F12}"
    }

    ; 冰川尖刺
    color := PixelGetColor(1899, 1483)
    if (color = 0x121531) {
        Send "{F7}"
    }

    ; 彗星风暴
    color := PixelGetColor(1900, 1493)
    if (color = 0x183082) {
        Send "{F6}"
    }

    ; 奥术智慧
    color := PixelGetColor(1913, 1495)
    if (color = 0x0036B8) {
        Send "{F9}"
    }
}

; 脚本结束时自动关闭提示
OnExit ExitFunc

ExitFunc(ExitReason, ExitCode)
{
    ToolTip
}