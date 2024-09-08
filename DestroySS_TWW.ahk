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
    ; 燃烧
    color := PixelGetColor(1907, 1499)
    if (color = 0xD98537) {
        Send "{F1}"
    }

    ; 暗影灼烧
    color := PixelGetColor(1906, 1490)
    if (color = 0xB1C4E8) {
        Send "{F2}"
    }

    ; 献祭
    color := PixelGetColor(1892, 1481)
    if (color = 0xF6D857) {
        Send "{F3}"
    }

    ; 召唤地狱火
    color := PixelGetColor(1906, 1474)
    if (color = 0x211D14) {
        Send "{F4 Down}"
	    Sleep 50	
	    Send "{F4 Up}"
	    Sleep 120
	    Send "{LButton Down}"
	    Sleep 50
	    Send "{LButton Up}"
    }

    ; 火焰之雨
    color := PixelGetColor(1887, 1500)
    if (color = 0xDF5A10) {
        Send "{F5 Down}"
	    Sleep 50	
	    Send "{F5 Up}"
	    Sleep 120
	    Send "{LButton Down}"
	    Sleep 50
	    Send "{LButton Up}"
    }

    ; 灵魂之火
    color := PixelGetColor(1917, 1488)
    if (color = 0xFFEE73) {
        Send "{F6}"
    }

    ; 混乱之箭
    color := PixelGetColor(1910, 1500)
    if (color = 0xCDF930) {
        Send "{F7}"
    }

    ; 陨灭
    color := PixelGetColor(1913, 1485)
    if (color = 0xFFFF7E) {
        Send "{F7}"
    }

    ; 烧尽
    color := PixelGetColor(1926, 1493)
    if (color = 0xFF8D12) {
        Send "{F8}"
    }

    ; 烧尽Plus
    color := PixelGetColor(1900, 1480)
    if (color = 0x45AD12) {
        Send "{F8}"
    }

    ; 浩劫
    color := PixelGetColor(1895, 1509)
    if (color = 0xFF2800) {
        Send "{F9}"
    }

    ; 引导恶魔火
    color := PixelGetColor(1933, 1483)
    if (color = 0xA1FA10) {
        Send "{F10}"
    }
}

; 脚本结束时自动关闭提示
OnExit ExitFunc

ExitFunc(ExitReason, ExitCode)
{
    ToolTip
}