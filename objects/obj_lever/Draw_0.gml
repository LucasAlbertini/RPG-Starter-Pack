draw_self();
if(can_talk && !instance_exists(obj_dialog)){
    draw_sprite(spr_exclamation, 0, x +8, y - 10) //Creates a talk sprite a little above the NPC
}