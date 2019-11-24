; AutoHotKey V2
ItemList := "" ; empty the contents, just a pipe symbol
Gui := GuiCreate()
; add method see: https://lexikos.github.io/v2/docs/objects/Gui.htm
Gui.Add("Text",, "Ctrl+A: Add point")
Gui.Add("Text", "x45 w80", "Interval(ms): ")
IntervalInput := Gui.Add("Edit", "x107 yp-3 w50", "100")
Gui.Add("Text", "x10", "(interval=-1: wait for color change)")
Gui.Add("Text", "x10", "Click item: Remove point")
Gui.Add("Text",, "Ctrl+1: Start click points")
Gui.Add("Text",, "Ctrl+2: Start double click points")
Gui.Add("Text",, "Ctrl+3: Stop")
Gui.Add("Text",, "Ctrl+X: Exit")
SaveBtn := Gui.Add("Button", "Default w50", "Save")
SaveBtn.OnEvent("Click", "SaveBtn_Click")
LoadBtn := Gui.Add("Button", "x75 yp w50", "Load")
LoadBtn.OnEvent("Click", "LoadBtn_Click")
ClearBtn := Gui.Add("Button", "x140 yp w50", "Clear")
ClearBtn.OnEvent("Click", "ClearBtn_Click")
global LV := Gui.Add("ListView", "x10 r10 w180", "Index|Points|Interval")
LV.ModifyCol(2, 70)
LV.ModifyCol(3, 50)
LV.OnEvent("Click", "LV_Click")

LastFile := GetLastFile()
if LastFile != ""
{
    LoadClicks LastFile
}
Gui.Show()
Gui.OnEvent("Close", "closeApp")
closeApp(e) 
{
  ExitApp
}
^a::  ; Ctrl+A: Add point
;   if ( LV.GetCount() > 9) {
;     return
;   }
  CoordMode "Mouse", "Screen" 
  MouseGetPos currentMouseX, currentMouseY
  LV.Add(, LV.GetCount(), currentMouseX "," currentMouseY, IntervalInput.Value)
return

global start_status := 0

^3::  ; Ctrl+3: Stop
  start_status := 0
  MsgBox "stopped"
return 

^2::  ; Ctrl+2: Start double click points
  start_status := 1
  wait_for_color_change := 0
  LV_LOOP_CLICK(2)
return 

^1::  ; Ctrl+1: Start click points
  start_status := 1
  wait_for_color_change := 0
  LV_LOOP_CLICK(1)
return 

^!z::  ; Control+Alt+Z hotkey.
MouseGetPos MouseX, MouseY
MsgBox "The color at the current cursor position is " PixelGetColor(MouseX, MouseY)
return

global wait_for_color_change := 0
LV_LOOP_CLICK(n) {
  if(start_status == 0) {
    return
  }
  if(wait_for_color_change == 1) {
      return
  }
  Loop LV.GetCount()
  {
    RetrievedText := LV.GetText(A_Index, 2)
    position := StrSplit(RetrievedText, ",")
    interval := LV.GetText(A_Index, 3)
    if interval == -1 
    {
        Wait_For_Color_Change(position[1], position[2])
    }
    else
    {
        CoordMode "Mouse", "Screen"
        Sleep 10
        MouseMove position[1], position[2]
        Sleep 10
        MouseClick "left"
        if(n = 2) {
            MouseClick "left", position[1], position[2]
        }
        Sleep interval
    }
  }
  LV_LOOP_CLICK(n)
}

^x:: ;Ctrl+X: Exit
  ExitApp
return

global old_color := 0
Wait_For_Color_Change(mouseX, mouseY) 
{
    if(start_status == 0) {
        return
    }
    if wait_for_color_change == 0 
    {
        old_color := PixelGetColor(mouseX, mouseY)
        wait_for_color_change := 1
    }
    new_color := PixelGetColor(mouseX, mouseY)
    if old_color != new_color
    {
        wait_for_color_change := 0
    }
    else
    {
        Sleep 50
        Wait_For_Color_Change(mouseX, mouseY)
    }
}

LV_Click(LV, RowNumber) 
{        
  if(RowNumber > 0) {
    LV.delete(RowNumber)
    Loop LV.GetCount()
    {
      LV.Modify(A_Index, , A_Index-1)
    }
  }
}

GetLastFile()
{
    FileName := A_ScriptDir "\last"
    LastFile := FileRead(FileName)
    return LastFile
}
UpdateLastFile(file)
{
    FileName := A_ScriptDir "\last"
    FileDelete FileName
    FileAppend file, FileName
}
SaveBtn_Click(Btn, ea)
{
    LastFile := GetLastFile()
    if LastFile == ""
    {
        LastFile := "click.txt"
    }
    SelectedFile := FileSelect(S, LastFile, "Save a file", "Text Documents(*.txt)")
    if SelectedFile != ""
    {
        ; MsgBox "The user selected the following:`n" SelectedFile
        FileDelete SelectedFile
        s := ""
        Loop LV.GetCount()
        {
            RetrievedText := LV.GetText(A_Index, 2)
            interval := LV.GetText(A_Index, 3)
            s := s RetrievedText "|" interval "`n"
        }
        FileAppend s, SelectedFile
        UpdateLastFile(SelectedFile)
    }
}
LoadBtn_Click(Btn, e)
{
    LastFile := GetLastFile()
    if LastFile == ""
    {
        LastFile := "click.txt"
    }
    SelectedFile := FileSelect(3, LastFile, "Open a file", "Text Documents(*.txt)")
    if SelectedFile != ""
    {
        ; MsgBox "The user selected the following:`n" SelectedFile
        LoadClicks SelectedFile
        UpdateLastFile(SelectedFile)
    }
}

LoadClicks(file)
{
    clicks := FileRead(file)
    array := StrSplit(clicks, "`n")
    For i, rowstr in array
        if rowstr != "" 
        {
            row := StrSplit(rowstr, "|")
            LV.Add(, LV.GetCount(), row[1], row[2])
        }

}

ClearBtn_Click(Btn, e)
{
    LV.delete()
}