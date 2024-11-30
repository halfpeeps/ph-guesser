// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function destroyLoc(loc_id, locimg_id){
	
	if instance_exists(loc_id){
		instance_destroy(loc_id)
	}
	
	if instance_exists(locimg_id){
		instance_destroy(locimg_id)
	}
}