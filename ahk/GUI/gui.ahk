; From <https://lexikos.github.io/v2/docs/commands/GuiControls.htm> 
Gui := GuiCreate()
FakeLink := Gui.Add("Text", "", "Click here to launch Google.")
FakeLink.SetFont("underline cBlue")
FakeLink.OnEvent("Click", "LaunchGoogle")
; Alternatively, a Link control can be used:
Gui.Add("Link",, 'Click <a href="www.google.com">here</a> to launch Google.')
Gui.Show()
LaunchGoogle() {
    Run("www.google.com")
}
