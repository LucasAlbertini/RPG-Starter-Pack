if(alarm[1] < 0){
    hp -= other.damage; //reduces the hp based on the damage from the attack object
    image_blend = c_red; //Tint the object in red
    move_and_collide(0, 0, [tilemap, obj_enemy_parent, obj_portal_parent], undefined, undefined, undefined, move_speed, move_speed)  // stop its movement so that it can have proper knockback

    kb_x = sign(x - other.x); //Sign will always be -1, 0 or 1
    kb_y = sign(y - other.y);
    alarm[1] = 20; //Sets the alarm1 for a 20 frames duration
}
//If the enemy isn't already beeing hit, reduces it hp based on the attack damage. Then, set its knockback position to the diference between the attack and the enemy. Then it calls for the alarm1 event, which will happen for 20 frames