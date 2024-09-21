//layers
layerdepth_locimg = 5
layerdepth_enginetools = 0


//locimg params
obj_locimg_x = 50
obj_locimg_y = 50
obj_locimg_scale = .5
locimg_layername = "layer_locimg"

//map params
map_id = 0
obj_map_x = 800
obj_map_y = 500
mapscale_small = .05



show_debug_message("init complete")

show_debug_message("Attempting to create obj_loc001")
instance_create_layer(0, 0, "layer_tools", obj_loc001)
if instance_exists(obj_loc001){
	show_debug_message("Created obj_loc001")
}

scr_drawmap()