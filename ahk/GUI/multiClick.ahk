; AutoHotKey V2
ItemList := "" ; empty the contents, just a pipe symbol
Gui := GuiCreate()
Gui.Add("Text",, "Ctrl+A: Add point")
Gui.Add("Text",, "Click item: Remove point")
Gui.Add("Text",, "Ctrl+1: Start click points")
Gui.Add("Text",, "Ctrl+2: Stop")
Gui.Add("Text",, "Ctrl+X: Exit")
Gui.Add("Text",, "Interval(ms): ")
IntervalInput := Gui.Add("Edit", "x100 y135 w80", "100")
LV := Gui.Add("ListView", "x10 r10 w170", "index|Points")
LV.OnEvent("Click", "LV_Click")
; ClickBtn := Gui.Add("Button", "Default w80", "Click")
; ClickBtn.OnEvent("Click", "ClickBtn_Click")  ;
Gui.Show()
Gui.OnEvent("Close", "closeApp")
closeApp() 
{
  ExitApp
}
^a::  ; CTRL+B hotkey
  if ( LV.GetCount() > 9) {
    return
  }
  CoordMode "Mouse", "Screen" 
  MouseGetPos currentMouseX, currentMouseY
  LV.Add(, LV.GetCount(), currentMouseX "," currentMouseY)
return

global start_status := 0

^3::  ; CTRL+` hotkey
  start_status := 0
  MsgBox "stopped"
return 

^2::  ; CTRL+2 hotkey
  start_status := 1
  LV_LOOP_CLICK(LV, IntervalInput, 2)
return 

^1::  ; CTRL+1 hotkey
  start_status := 1
  LV_LOOP_CLICK(LV, IntervalInput, 1)
return 

LV_LOOP_CLICK(LV, IntervalInput, n) {
  if(start_status = 0) {
    return
  }
  Loop LV.GetCount
  {
    RetrievedText := LV.GetText(A_Index, 2)
    position := StrSplit(RetrievedText, ",")
    CoordMode "Mouse", "Screen" 
    Sleep 10
    MouseClick "left", position[1], position[2]
    if(n = 2) {
      MouseClick "left", position[1], position[2]
    }
  }
  Sleep IntervalInput.Value
  LV_LOOP_CLICK(LV, IntervalInput, n)
}

^x::
  ExitApp
return

LV_Click(LV, RowNumber) 
{        
  if(RowNumber > 0) {
    LV.delete(RowNumber)
    Loop LV.GetCount
    {
      LV.Modify(A_Index, , A_Index-1)
    }
  }
}

ClickBtn_Click(Btn)
{

}