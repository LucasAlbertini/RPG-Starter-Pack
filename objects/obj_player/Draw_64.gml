//set variables for the dimensions of the Health and XP boxes
var _dx = 16;
var _dy = 16;
var _barw = 256;
var _barh = 32;


//Proprieties for the drawings
draw_set_font(Font1);
draw_set_halign(fa_center) //means that when a drawing is made, it will be aligned in the midle and center of the dimensions given
draw_set_valign(fa_middle)

// Healthbar
var _healh_barw = _barw * (hp / hp_total);
draw_sprite_stretched(spr_box, 0, _dx, _dy, _barw, _barh);
draw_sprite_stretched_ext(spr_box, 1, _dx, _dy, _healh_barw, _barh, c_red, 0.6);

//draw_text(_dx, _dy, "HP")
draw_text(_dx + _barw / 2, _dy + _barh / 2, "HP")

// XP
var _xp_barw = _barw * (xp / xp_require);
_dy = _barh + 8;
draw_sprite_stretched(spr_box, 0, _dx, _dy, _barw, _barh);
draw_sprite_stretched_ext(spr_box, 1, _dx, _dy, _xp_barw, _barh, c_blue, 0.6);
draw_text(_dx + _barw / 2, _dy + _barh / 2, $"LEVEL{level}")

// Reset alignment proprieties
draw_set_halign(fa_left);
draw_set_valign(fa_top)
