scaled_thisStep = false

if position_meeting(mouse_x, mouse_y, self) {
	isHovering = true
	show_debug_message("Mouse entered map")
}

if !position_meeting(mouse_x, mouse_y, self) {
	if isHovering {
		isHovering = false
		show_debug_message("Mouse left map")
	}
}




if isHovering {
	if self.image_xscale != global.mapscale_large {
		show_debug_message(self.image_xscale)
		self.image_xscale = self.image_xscale + global.mapscale_speed
		self.image_yscale = self.image_xscale
	}
	
	if self.image_xscale > global.mapscale_large {
		self.image_xscale = global.mapscale_large
		self.image_yscale = self.image_yscale
	}
	
	scaled_thisStep = true
}


if !scaled_thisStep {
	if !isHovering {
		if self.image_xscale != global.mapscale_small {
			self.image_xscale = self.image_xscale - global.mapscale_speed
			self.image_yscale = self.image_xscale
		}
	
		if self.image_xscale < global.mapscale_small {
			self.image_xscale = global.mapscale_small
			self.image_yscale = self.image_yscale
			wasHovering = false
		}
	}
}