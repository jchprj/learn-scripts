; From <https://lexikos.github.io/v2/docs/commands/GuiControls.htm#Edit> 
Gui := GuiCreate()
MyEdit := Gui.Add("Edit", "R20")
MyEdit.Value := FileRead("edit.ahk")
Gui.Show()