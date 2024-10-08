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
    ; 鬼影缠身
    color := PixelGetColor(1897, 1483)
    if (color = 0xA3CAA9) {
        Send "{F1}"
    }

    ; 痛楚
    color := PixelGetColor(1905, 1475)
    if (color = 0x818381) {
        Send "{F2}"
    }

    ; 痛苦无常
    color := PixelGetColor(1900, 1481)
    if (color = 0x240E13) {
        Send "{F3}"
    }

    ; 腐蚀术
    color := PixelGetColor(1914, 1467)
    if (color = 0x5A759C) {
        Send "{F5}"
    }

    ; 邪恶污染
    color := PixelGetColor(1934, 1500)
    if (color = 0xFFA0C3) {
        Send "{F6 Down}"
	    Sleep 50	
	    Send "{F6 Up}"
	    Sleep 120
	    Send "{LButton Down}"
	    Sleep 50
	    Send "{LButton Up}"
        Sleep 120
    }

    ; 腐蚀之种
    color := PixelGetColor(1920, 1464)
    if (color = 0x4CBA29) {
        Send "{F7}"
    }

    ; 灵魂腐化
    color := PixelGetColor(1915, 1485)
    if (color = 0x63F1F7) {
        Send "{F8}"
    }

    ; 召唤黑眼
    color := PixelGetColor(1928, 1479)
    if (color = 0x568E17) {
        Send "{F9}"
    }

    ; 灾难狂欢
    color := PixelGetColor(1924, 1499)
    if (color = 0xE237EF) {
        Send "{F10}"
    }

    ; 暗影箭
    color := PixelGetColor(1910, 1482)
    if (color = 0x8F5AD3) {
        Send "{F11}"
    }

    ; 召唤撒雅德
    color := PixelGetColor(1896, 1505)
    if (color = 0xB59990) {
        Send "+{F1}"
    }
}

; 脚本结束时自动关闭提示
OnExit ExitFunc

ExitFunc(ExitReason, ExitCode)
{
    ToolTip
}