function free() {
	// Movement
	inputDirection = point_direction(
		0, 
		0, 
		keyRight - keyLeft,
		keyDown - keyUp
	)
	inputMagnitude = (keyRight - keyLeft != 0) || (keyDown - keyUp != 0)
	
	horizontalSpeed = lengthdir_x(inputMagnitude * moveSpeed, inputDirection)
	verticalSpeed = lengthdir_y(inputMagnitude * moveSpeed, inputDirection)
	
	objectCollision()
	
	x+=horizontalSpeed
	y+=verticalSpeed
}