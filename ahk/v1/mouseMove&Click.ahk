CoordMode, Mouse  
Loop {
	MouseMove, 535, 610
	MouseClick 
	Sleep, 1500
	GetKeyState, state, Shift
	if state = D
		break
}