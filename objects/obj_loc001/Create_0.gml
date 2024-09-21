loc_map = 5
loc_id = -1
loc_name = "Test 1"
loc_x = 50
loc_y = 50
loc_ent = obj_locimg001

show_debug_message("Starting scr_drawloc")
locimg = scr_drawloc(loc_id, loc_ent)
show_debug_message(locimg)