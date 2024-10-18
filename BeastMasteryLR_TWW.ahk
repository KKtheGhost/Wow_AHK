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
    ; 复活宠物
    color := PixelGetColor(1891, 1510)
    if (color = 0x827154) {
        Send "+{F1}"
    }

    ; 倒刺射击
    color := PixelGetColor(1907, 1458)
    if (color = 0xB0F3E3) {
        Send "{F}"
    }

    ; 猎人印记
    color := PixelGetColor(1916, 1480)
    if (color = 0xDF2F33) {
        Send "{R}"
    }

    ; 倒刺射击
    color := PixelGetColor(1898, 1457)
    if (color = 0xC61D11) {
        Send "{F1}"
    }

    ; 凶暴野兽
    color := PixelGetColor(1902, 1499)
    if (color = 0x9E9468) {
        Send "{F2}"
    }

    ; 狂野怒吼
    color := PixelGetColor(1919, 1505)
    if (color = 0xA51818) {
        Send "{F3}"
    }

    ; 多重射击
    color := PixelGetColor(1891, 1463)
    if (color = 0x470047) {
        Send "{F4}"
    }

    ; 眼镜蛇射击
    color := PixelGetColor(1890, 1474)
    if (color = 0x5CA70B) {
        Send "{F5}"
    }

    ; 杀戮命令
    color := PixelGetColor(1887, 1508)
    if (color = 0xFDA574) {
        Send "{F7}"
    }

    ; 夺命射击
    color := PixelGetColor(1895, 1477)
    if (color = 0xCB1E37) {
        Send "{F8}"
    }

    ; 宁神射击
    color := PixelGetColor(1910, 1477)
    if (color = 0xCB93E0) {
        Send "{F9}"
    }

    ; 爆炸射击
    color := PixelGetColor(1900, 1502)
    if (color = 0x6C291F) {
        Send "{F10}"
    }

    ; 狂暴
    color := PixelGetColor(1913, 1482)
    if (color = 0xA3BDA6) {
        Send "{F11}"
    }

    ; 黑蚀箭
    color := PixelGetColor(1903, 1489)
    if (color = 0x331E65) {
        Send "{F12}"
    }
}

; 脚本结束时自动关闭提示
OnExit ExitFunc

ExitFunc(ExitReason, ExitCode)
{
    ToolTip
}