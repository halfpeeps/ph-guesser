function drawLoc(loc_id, loc_ent){
	show_debug_message("scr_drawloc started")
	
	locimg_x = global.locimg_x
	locimg_y = global.locimg_y
	locimg_scale = global.locimg_scale
	locimg_layername = global.locimg_layername
	
	if !layer_exists(locimg_layername){
		layer_create(obj_init.layerdepth_locimg, locimg_layername)
	}
	
	locimg_gameid = instance_create_layer(locimg_x, locimg_y, locimg_layername, loc_ent)
	locimg_gameid.image_xscale = locimg_scale
	locimg_gameid.image_yscale = locimg_scale
	
	return locimg_gameid

}