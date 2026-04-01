if(instance_exists(obj_dialog)) exit; //If there is a dialog box open, the step ends

var _hor = 0;
var _ver = 0;

_hor = keyboard_check(vk_right) - keyboard_check(vk_left); //Get if i am pressing de arrows key. Since it is a horizontal movement, it calculates how much I walk in the X. So, if i want to walk to the left, i am walking in negative
_ver = keyboard_check(vk_down) - keyboard_check(vk_up); //Same idea

if(can_run){
    if(keyboard_check(vk_shift)){
        move_speed = 1.5;
    }else{
        move_speed = 1.0;
    }
}

//var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A")); //Get if i am pressing de D or A key. Since it is a horizontal movement, it calculates how much I walk in the X. So, if i want to walk to the left, i am walking in negative
//var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W")); //Same idea

//Correction for the diagonal movement. I check if there is movement, and if there is, i get the direction of it, set _len as the move speed, and move in that direction
var _len = 0;
if(_hor!= 0 || _ver!=0) _len = move_speed
//var _len = _hor!= 0 || _ver!=0;
var _dir = point_direction(0, 0, _hor, _ver);
_hor = lengthdir_x(_len, _dir);
_ver = lengthdir_y(_len, _dir);


//this function sets the movement for X and Y, checks the colision with the tilemap i informed, and has optional parameters for the max move speed
move_and_collide(_hor * move_speed, _ver * move_speed, [tilemap, obj_portal_parent], undefined, undefined, undefined, move_speed, move_speed) 

//now we need to check the direction so that we select the correct animation

if(_hor != 0 or _ver != 0){
    if(_hor > 0) sprite_index = spr_player_walk_right;
    else if(_hor < 0) sprite_index = spr_player_walk_left;
    else if(_ver > 0) sprite_index = spr_player_walk_down;
    else if(_ver < 0) sprite_index = spr_player_walk_up;
    facing = point_direction(0, 0, _hor, _ver)
} else{
    if(sprite_index == spr_player_walk_right) sprite_index = spr_player_idle_right;
    else if(sprite_index == spr_player_walk_left) sprite_index = spr_player_idle_left;
    if(sprite_index == spr_player_walk_up) sprite_index = spr_player_idle_up;
    if(sprite_index == spr_player_walk_down) sprite_index = spr_player_idle_down;
}

if(keyboard_check_pressed(ord("Z"))){
    var _inst = instance_create_depth(x, y, depth, obj_attack_1);
    _inst.image_angle = facing;
    _inst.damage *= damage;
}

