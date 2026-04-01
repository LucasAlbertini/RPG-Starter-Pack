if(current_message < 0) exit;
var _str = messages[current_message].msg;

if(current_char < string_length(_str)){
    current_char += char_speed * (1 + real(keyboard_check(input_key)));
    draw_message = string_copy(_str, 0, current_char);
}
else if(keyboard_check_pressed(input_key)){
    current_message++;
    if(current_message >= array_length(messages)){
        instance_destroy();
        
        if(next_room == true){
            room_goto(Room2)
        }else if(new_item == true){
            obj_player.can_run = true;
        }
    }
    else{
        current_char = 0
    }
}
//If the current letter of the message is within the string, then it will advance the text. It will go faster if I am pressing the input_key. If the text ends, it will check if the message array is over.
//if it is, it will destroy the instance as soon as i press the input key. If there is another message in the array, then it will 