function objectCollision() {
	//Horizontal Collision
	if (place_meeting(x+horizontalSpeed,y, oWall)) {
		while (!place_meeting(x+sign(horizontalSpeed),y, oWall)) {
			x+=sign(horizontalSpeed)
		}
		horizontalSpeed = 0
	}
	
	//Vertical Collision
	if (place_meeting(x,y+verticalSpeed, oWall)) {
		while (!place_meeting(x,y+sign(verticalSpeed), oWall)) {
			y+=sign(verticalSpeed)
		}
		verticalSpeed = 0	
	}
}