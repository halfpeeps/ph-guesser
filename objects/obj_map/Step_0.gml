function moveToCenter(){
	
}

function checkHovering(){
	var isHovering = false
	if position_meeting(mouse_x, mouse_y, self) {
		isHovering = true
		show_debug_message("Mouse entered map")
	}

	if !position_meeting(mouse_x, mouse_y, self) {
		isHovering = false
		show_debug_message("Mouse left map")
	}
	return isHovering
}





function scaleImage(){
	
	var scaledThisStep = false
	var scaleReset = false
	
	if self.image_xscale = global.mapscale_small {
		scaleReset = true
	}
	
	if checkHovering {
		if self.image_xscale != global.mapscale_large {
			show_debug_message(self.image_xscale)
			self.image_xscale = self.image_xscale + global.mapscale_speed
			self.image_yscale = self.image_xscale
		}
	
		if self.image_xscale > global.mapscale_large {
			self.image_xscale = global.mapscale_large
			self.image_yscale = self.image_yscale
		}
	
		scaledThisStep = true
	}


	if !scaledThisStep {
		if !checkHovering {
			if !scaleReset {
				if self.image_xscale != global.mapscale_small {
					self.image_xscale = self.image_xscale - global.mapscale_speed
					self.image_yscale = self.image_xscale
				}
	
				if self.image_xscale < global.mapscale_small {
					self.image_xscale = global.mapscale_small
					self.image_yscale = self.image_xscale
				}
			}
		}
	}
}




scaleImage()