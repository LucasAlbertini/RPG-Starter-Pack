if(instance_exists(obj_dialog)) exit; //If there is a dialog box open, the step ends
    if(alarm[1] >= 0){ //If the alarm for attacks is being run, will set the target movement as the knockback movement
    target_x = kb_x;
    target_y = kb_y;
}
var _hor = clamp(target_x -x, -1, 1); //Defines the horizontal and vertical movement based on the diference from the target movement and the current position, between -1 and 1, so the monster isn't in superspeed
var _ver = clamp(target_y -y, -1, 1);

move_and_collide(_hor * move_speed, _ver * move_speed, [tilemap, obj_enemy_parent, obj_portal_parent], undefined, undefined, undefined, move_speed, move_speed)  // will colide with the tilemap we setted and with other enemies