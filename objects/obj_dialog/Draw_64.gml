var _dx = 0; //center
var _dy = gui_h * 0.7; //if we see the screen y as a percentage, it will start at 70% of it
var _boxw = gui_w;
var _boxh = gui_h - _dy; //it will cover in heigh all the way between 70% and 100%  

draw_sprite_stretched(spr_box, 0, _dx, _dy, _boxw, _boxh); //now we have a dialog box!

//Text parameters:
_dx += 16; //We will use this as a margin
_dy += 16;

draw_set_font(Font1);

var _name = messages[current_message].name;
draw_set_color(global.char_colors[$ _name]);
draw_text(_dx, _dy, _name)
draw_set_color(c_white);

_dy += 40;

draw_text_ext(_dx, _dy, draw_message, -1, _boxw - _dx * 2); //The X position is center, but we add 16 * 2 for margin
