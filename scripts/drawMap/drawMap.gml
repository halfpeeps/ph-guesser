// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function drawMap(){
	map_x = global.map_x
	map_y = global.map_y
	
	if !instance_exists(obj_map){
		if layer_exists(global.map_layername){
			global.map_id = instance_create_layer(map_x, map_y, global.map_layername, obj_map)
			var map_id = global.map_id
			map_id.image_xscale = global.mapscale_small
			map_id.image_yscale = map_id.image_xscale
		}
	}

}