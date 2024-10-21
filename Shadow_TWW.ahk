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
        SetTimer RandomMainLoop, 25  ; 先设置一个初始间隔
        ToolTip "✅ Started"
    } else {
        SetTimer RandomMainLoop, 0
        ToolTip "❌ Stopped"
    }
    SetTimer () => ToolTip(), -3000
}

RandomMainLoop()
{
    if (!isRunning) {
        return  ; 如果isRunning为false，立即退出函数
    }
    
    interval := Random(40, 100)  ; 生成 40-100 之间的随机数
    MainLoop()  ; 执行主循环
    if (isRunning) {  ; 只有在isRunning为true时才设置下一次循环
        SetTimer RandomMainLoop, -interval
    }
}

; 主循环
MainLoop()
{
    ; 绝望祷言
    color := PixelGetColor(1921, 1493)
    if (color = 0xF9D5AF) {
        Send "{1}"
    }

    ; 沉默
    color := PixelGetColor(1903, 1461)
    if (color = 0x390C42) {
        Send "{E}"
    }

    ; 真言术韧
    color := PixelGetColor(1919, 1506)
    if (color = 0x7CACE3) {
        Send "+{F1}"
    }

    ; 奥术洪流
    color := PixelGetColor(1890, 1505)
    if (color = 0x18457B) {
        Send "+{F3}"
    }

    ; 暗影形态
    color := PixelGetColor(1890, 1492)
    if (color = 0x25056B) {
        Send "+{F4}"
    }

    ; 净化邪恶
    color := PixelGetColor(1902, 1499)
    if (color = 0xC92002) {
        Send "{F1}"
    }

    ; 吸血鬼之触
    color := PixelGetColor(1912, 1477)
    if (color = 0xDED7FF) {
        Send "{F1}"
    }

    ; 虚空幽灵
    color := PixelGetColor(1911, 1482)
    if (color = 0x100442) {
        Send "{F2}"
    }

    ; 催心魔
    color := PixelGetColor(1897, 1482)
    if (color = 0x99F151) {
        Send "{F2}"
    }

    ; 暗影魔
    color := PixelGetColor(1890, 1458)
    if (color = 0xC7ACCA) {
        Send "{F2}"
    }

    ; 黑暗升华
    color := PixelGetColor(1919, 1482)
    if (color = 0x582972) {
        Send "{F3}"
    }

    ; 虚空爆发
    color := PixelGetColor(1890, 1480)
    if (color = 0x6D26DE) {
        Send "{F3}"
    }

    ; 虚空箭
    color := PixelGetColor(1899, 1488)
    if (color = 0xF504FF) {
        Send "{F3}"
    }

    ; 能量灌注
    color := PixelGetColor(1896, 1485)
    if (color = 0x4A3923) {
        Send "{F12}"
    }

    ; 神圣之星
    color := PixelGetColor(1908, 1490)
    if (color = 0xC8A3F9) {
        Send "{F4}"
    }

    ; 光晕
    color := PixelGetColor(1899, 1472)
    if (color = 0xBB68B7) {
        Send "{F4}"
    }

    ; 心灵震爆
    color := PixelGetColor(1906, 1477)
    if (color = 0xC35E29) {
        Send "{F5}"
    }

    ; 虚空冲击
    color := PixelGetColor(1896, 1496)
    if (color = 0x4FB6D9) {
        Send "{F5}"
    }

    ; 噬灵疫病
    color := PixelGetColor(1909, 1450)
    if (color = 0x453E55) {
        Send "{F6}"
    }

    ; 虚空洪流
    color := PixelGetColor(1940, 1504)
    if (color = 0x562170) {
        Send "{F7}"
    }

    ; 精神鞭笞狂
    color := PixelGetColor(1924, 1474)
    if (color = 0x6816D7) {
        Send "{F8}"
    }

    ; 精神鞭笞
    color := PixelGetColor(1923, 1491)
    if (color = 0x110C07) {
        Send "{F8}"
    }

    ; 暗言术灭
    color := PixelGetColor(1910, 1481)
    if (color = 0x160000) {
        Send "{F9}"
    }

    ; 暗言术痛
    color := PixelGetColor(1892, 1459)
    if (color = 0xFFFE20) {
        Send "{F10}"
    }

    ; 暗影冲击
    color := PixelGetColor(1910, 1463)
    if (color = 0x21168C) {
        Send "{F11}"
;       Send "{F11 Down}"
;	    Sleep 50	
;	    Send "{F11 Up}"
;	    Sleep 120
;	    Send "{LButton Down}"
;	    Sleep 50
;	    Send "{LButton Up}"
    }

    ; 饰品-嬗变之卵
    color := PixelGetColor(1920, 1476)
    if (color = 0x9B33E9) {
        Send "!1"
    }
}

; 脚本结束时自动关闭提示
OnExit ExitFunc

ExitFunc(ExitReason, ExitCode)
{
    ToolTip
}