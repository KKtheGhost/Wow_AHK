#Requires AutoHotkey v2.0

$Ctrl::
{
    MouseGetPos(&mouseX, &mouseY)
    
    color := PixelGetColor(mouseX, mouseY, "RGB")
    
    result := mouseX . ", " . mouseY . ", 颜色是：" . color
    
    ToolTip(result)
    
    A_Clipboard := result  ; 复制结果到剪贴板
    
    SetTimer () => ToolTip(), -3000  ; 3秒后自动隐藏ToolTip
}