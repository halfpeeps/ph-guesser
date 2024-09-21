stepScaled = false

if position_meeting(mouse_x, mouse_y, self) {
	isHovering = true
	show_debug_message("Mouse entered map")
}

if !position_meeting(mouse_x, mouse_y, self) {
	if isHovering {
		wasHovering = true
		isHovering = false
		show_debug_message("Mouse left map")
	}
}




if isHovering {
	if self.image_xscale != obj_const.mapscale_large {
		show_debug_message(self.image_xscale)
		self.image_xscale = self.image_xscale + .01
		self.image_yscale = self.image_xscale
		show_debug_message("increasing map scale")
		show_debug_message(self.image_xscale)
	}
	
	if self.image_xscale > obj_const.mapscale_large {
		self.image_xscale = obj_const.mapscale_large
		self.image_yscale = self.image_yscale
		show_debug_message("mark1")
	}
	
	stepScaled = true
}


if !stepScaled {
	if wasHovering {
		if isHovering {
			wasHovering = false
		}
	}
	else
	{
		if self.image_xscale != obj_const.mapscale_small {
			self.image_xscale = self.image_xscale - obj_const.mapscale_speed
			self.image_yscale = self.image_xscale
		}
	
		if self.image_xscale < obj_const.mapscale_small {
			self.image_xscale = obj_const.mapscale_small
			self.image_yscale = self.image_yscale
			wasHovering = false
		}
	}
}