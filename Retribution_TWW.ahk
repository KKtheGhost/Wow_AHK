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
    ; 灰烬觉醒
    color := PixelGetColor(1923, 1492)
    if (color = 0x6B1810) {
        Send "{F5}"
    }

    ; 圣光之锤
    color := PixelGetColor(1907, 1485)
    if (color = 0x7D7C7F) {
        Send "{F5}"
    }

    ; 公正之剑
    color := PixelGetColor(1910, 1476)
    if (color = 0xD46338) {
        Send "{F1}"
    }

    ; 审判
    color := PixelGetColor(1907, 1498)
    if (color = 0x934C0D) {
        Send "{F2}"
    }

    ; 最终审判
    color := PixelGetColor(1907, 1484)
    if (color = 0x46302B) {
        Send "{F3}"
    }

    ; 神圣风暴
    color := PixelGetColor(1910, 1490)
    if (color = 0x67492B) {
        Send "{F4}"
    }

    ; 处决审判
    color := PixelGetColor(1913, 1499)
    if (color = 0xCD8D38) {
        Send "{F6}"
    }

    ; 圣洁鸣钟
    color := PixelGetColor(1894, 1470)
    if (color = 0x0A314F) {
        Send "{F8}"
    }

    ; 愤怒之锤
    color := PixelGetColor(1912, 1500)
    if (color = 0x233632) {
        Send "{F12}"
    }

    ; 奥术洪流
    color := PixelGetColor(1912, 1498)
    if (color = 0xFFFCF9) {
        Send "+{F4}"
    }

    ; 饰品1
    color := PixelGetColor(1910, 1487)
    if (color = 0x692F92) {
        Send "{F10}"
    }

    ; 饰品2
    color := PixelGetColor(1909, 1496)
    if (color = 0x7657C0) {
        Send "{F10}"
    }

    ; 饰品3
    color := PixelGetColor(1893, 1474)
    if (color = 0x91A94D) {
        Send "{F9}"
    }

    ; 火盾
    color := PixelGetColor(1913, 1481)
    if (color = 0xBA8324) {
        Send "{2}"
    }
}

; 脚本结束时自动关闭提示
OnExit ExitFunc

ExitFunc(ExitReason, ExitCode)
{
    ToolTip
}