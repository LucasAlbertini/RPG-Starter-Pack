if(instance_exists(obj_dialog)) exit;
    
if(instance_exists(obj_player) && distance_to_object(obj_player) < 8){
    can_talk = true;
    if(keyboard_check_pressed(input_key)){
        create_dialog(npc_dialog)
        //create_dialog(global.welcome_dialog);
    }
}
else{
    can_talk = false; 
}