image_blend = c_white //It could also be = -1. It is the default tinting/blend
if(hp<= 0){
    instance_destroy() //destroys the object if has 0 or less hp
    obj_player.gain_xp(xp_value)
}
