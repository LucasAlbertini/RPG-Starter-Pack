function create_dialog(_messages){
    if(instance_exists(obj_dialog)){
        show_debug_message(typeof(_messages)); // Vai retornar "array" se for um array de verdade
        show_debug_message(string(_messages));
        return;
    }
    var _inst = instance_create_depth(0,0,0, obj_dialog)
    _inst.messages = _messages;
    _inst.current_message = 0;
}

char_colors = {
    "Congrats": c_yellow,
    "MC": c_yellow,
    "Beans": c_green,
    "Ronaldo": c_red,
    "Next level!": c_white
}

welcome_dialog = [
{
    name: "Beans",
    msg: "Welcome to the dungeon!"
},

{
    name: "MC",
    msg: "Thanks"
},

{
    name: "Beans",
    msg: "It is just a cave really. But I like to call it 'The Dungeon'"
},

{
    name: "MC",
    msg: "Sure"
},

{
    name: "Beans",
    msg: "Don't forget you can attack by pressing de Z key. It is kinda dangerous there"
},

{
    name: "MC",
    msg: "Thank you, buddy"
}

]

scared_dialog = [
{
    name: "Ronaldo",
    msg: "I'm scared of getting inside"
},

{
    name: "MC",
    msg: "Why?"
},
{
    name: "Ronaldo",
    msg: "Because one of that green monsters ate my friend!"
},

{
    name: "MC",
    msg: "I didn't see any green ones..."
},
{
    name: "Ronaldo",
    msg: "They are deeper into the dungeon! Be careful, they are the strongest ones"
},

{
    name: "MC",
    msg: "I'll watch out, thanks"
}
]

ladder_dialog = [{
    name: "Next level!",
    msg: "This is the way down. Let's go."}]

shoes_dialog = [
{
    name: "Congrats",
    msg: "You got new shoes! Hold SHIFT to run"
}
]