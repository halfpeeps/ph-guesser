// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_drawmap(){
	map_x = obj_const.obj_map_x
	map_y = obj_const.obj_map_y
	
	if !instance_exists(obj_map){
		if layer_exists("layer_map"){
			obj_const.map_id = instance_create_layer(map_x, map_y, "layer_map", obj_map)
			var map_id = obj_const.map_id
			//map_id.image_xscale = obj_const.mapscale_small
			//map_id.image_yscale = obj_const.mapscale_small
			show_debug_message("Map created")
		}
	}

}