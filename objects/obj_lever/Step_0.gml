if(instance_exists(obj_dialog)) exit;
    
if(instance_exists(obj_player) && distance_to_object(obj_player) < 8){
    can_talk = true;
    if(keyboard_check_pressed(input_key)){
        if(!used){
            create_dialog(npc_dialog)
            //Code for deleting the tiles from Tiles_Col_Removable
        }
    }
}
else{
    can_talk = false; 
}