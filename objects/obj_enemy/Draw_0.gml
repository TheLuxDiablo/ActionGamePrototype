draw_sprite_ext(sprite_index, image_index, x, y, global.facing, 1, 0, c_white, 1);
draw_sprite_ext(spr_shadow, image_index, x, y + 14, 1, 1, 0, c_white, 1);

draw_healthbar(x-20,y-26,x+20,y-20,enemy_hp*20,c_black,c_red,c_green,0,true,false)