function scr_drawloc(loc_id, loc_ent){
	show_debug_message("scr_drawloc started")
	
	locimg_x = obj_const.obj_locimg_x
	locimg_y = obj_const.obj_locimg_y
	locimg_scale = obj_const.obj_locimg_scale
	locimg_layername = obj_const.locimg_layername
	
	if !layer_exists(locimg_layername){
		layer_create(obj_const.layerdepth_locimg, locimg_layername)
	}
	
	locimg_gameid = instance_create_layer(locimg_x, locimg_y, locimg_layername, loc_ent)
	locimg_gameid.image_xscale = locimg_scale
	locimg_gameid.image_yscale = locimg_scale
	
	return locimg_gameid

}