move_speed = 1; //Movement speed used for steps
max_move_speed = 1

tilemap = layer_tilemap_get_id("Tiles_Col") //gets the id of the tilemaps that we defined as colisions

hp = 10;
hp_total = hp;
damage = 1;
can_run = false;

facing = 0;

xp = 0;
level = 1;
xp_require = 100;

 function gain_xp(xp_to_add){
    xp += xp_to_add;
    if(xp >= xp_require){
        level ++
        xp -= xp_require;
        xp_require *= 1.4;
        damage += 0.8;
        hp_total += 3;
        hp = hp_total 
        
        create_dialog([
    {
        name: "Congrats",
        msg: $"You just reached Level {level}!\nNew damage: {damage}\nNew HP: {hp_total}"
    }
        ])
    }
}

