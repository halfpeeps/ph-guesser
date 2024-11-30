//params
//layers
layerdepth_locimg = 5
layerdepth_enginetools = 0

//basic
global.screenCenter_x = room_width / 2
global.screenCenter_y = room_height / 2


//locimg params
global.locimg_x = 50
global.locimg_y = 50
global.locimg_scale = .5
global.locimg_layername = "layer_locimg"

//map params
global.map_layername = "layer_map"
global.map_id = 0
global.map_x = 800
global.map_y = 500
global.mapscale_small = .05
global.mapscale_large = 1
global.mapscale_speed = .1




//init
instance_create_layer(global.locimg_x, global.locimg_y, "layer_tools", obj_loc001)
instance_create_layer(0, 0, "layer_background", obj_background)
drawMap()