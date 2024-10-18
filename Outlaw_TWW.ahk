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
    ; 命运骨骰
    color := PixelGetColor(1901, 1481)
    if (color = 0x42100D) {
        Send "{F1}"
    }

    ; 冲动
    color := PixelGetColor(1913, 1491)
    if (color = 0xF4AB4D) {
        Send "{F2}"
    }

    ; 切割
    color := PixelGetColor(1915, 1491)
    if (color = 0xE6A500) {
        Send "{F3}"
    }

    ; 剑刃乱舞
    color := PixelGetColor(1919, 1490)
    if (color = 0x88677A) {
        Send "{F4}"
    }

    ; 鬼魅攻击
    color := PixelGetColor(1922, 1485)
    if (color = 0xD5D8DA) {
        Send "{F5}"
    }

    ; 潜行
    color := PixelGetColor(1905, 1481)
    if (color = 0x291421) {
        Send "{1}"
    }

    ; 影袭
    color := PixelGetColor(1902, 1477)
    if (color = 0x837888) {
        Send "{F6}"
    }

    ; 伏击
    color := PixelGetColor(1889, 1484)
    if (color = 0xDE7F2D) {
        Send "{F6}"
    }

    ; 手枪射击
    color := PixelGetColor(1924, 1475)
    if (color = 0x080000) {
        Send "{F7}"
    }

    ; 消失
    color := PixelGetColor(1920, 1486)
    if (color = 0x6B7984) {
        Send "{F8}"
    }

    ; 正中眉心
    color := PixelGetColor(1907, 1513)
    if (color = 0x191E27) {
        Send "{F9}"
    }

    ; 斩击
    color := PixelGetColor(1883, 1471)
    if (color = 0xFFF6AB) {
        Send "{F10}"
    }

    ; 菊花茶
    color := PixelGetColor(1903, 1463)
    if (color = 0x325935) {
        Send "{2}"
    }
}

; 脚本结束时自动关闭提示
OnExit ExitFunc

ExitFunc(ExitReason, ExitCode)
{
    ToolTip
}