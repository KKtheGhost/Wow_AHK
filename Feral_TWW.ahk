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
        SetTimer MainLoop, 25
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
    ; 野性印记
    color := PixelGetColor(1892, 1495)
    if (color = 0xFF96EF) {
        Send "+{F2}"
    }

    ; 潜行
    color := PixelGetColor(1921, 1491)
    if (color = 0x000FCB) {
        Send "+{F1}"
    }

    ; 猎豹形态
    color := PixelGetColor(1894, 1454)
    if (color = 0x00F3FA) {
        Send "{1}"
    }

    ; 甘霖
    color := PixelGetColor(1908, 1491)
    if (color = 0x3DBFDD) {
        Send "{3}"
    }

    ; 万灵之召
    color := PixelGetColor(1892, 1473)
    if (color = 0x13398A) {
        Send "{R}"
    }

    ; 撕碎
    color := PixelGetColor(1900, 1477)
    if (color = 0xD35935) {
        Send "{F1}"
    }

    ; 斜掠
    color := PixelGetColor(1893, 1504)
    if (color = 0x630600) {
        Send "{F2}"
    }

    ; 原始之怒
    color := PixelGetColor(1885, 1491)
    if (color = 0x595B56) {
        Send "{F3}"
    }

    ; 割裂
    color := PixelGetColor(1893, 1485)
    if (color = 0x54312A) {
        Send "{F5}"
    }

    ; 野蛮挥砍
    color := PixelGetColor(1903, 1475)
    if (color = 0xF76131) {
        Send "{F6}"
    }

    ; 痛击
    color := PixelGetColor(1896, 1458)
    if (color = 0x9A7358) {
        Send "{F7}"
    }

    ; 凶猛撕咬
    color := PixelGetColor(1893, 1477)
    if (color = 0x463033) {
        Send "{F8}"
    }

    ; 毁灭
    color := PixelGetColor(1904, 1489)
    if (color = 0x771F00) {
        Send "{F8}"
    }

    ; 猛虎之怒
    color := PixelGetColor(1892, 1485)
    if (color = 0xFDE692) {
        Send "{F9}"
    }

    ; 狂暴
    color := PixelGetColor(1884, 1481)
    if (color = 0xD89669) {
        Send "{F10}"
    }

    ; 狂暴
    color := PixelGetColor(1906, 1498)
    if (color = 0x04D4AC) {
        Send "{F11}"
    }

    ; 狂暴（种族）
    color := PixelGetColor(1892, 1489)
    if (color = 0x65766B) {
        Send "{F12}"
    }
}

; 脚本结束时自动关闭提示
OnExit ExitFunc

ExitFunc(ExitReason, ExitCode)
{
    ToolTip
}