draw_sprite(spr_healthbar_bg,0,1472,2368)
draw_sprite_stretched(spr_healthbar,0,healthbar_x,healthbar_y,((global.playerHealth/global.playerHealthMax) * healthbar_width), healthbar_height);
draw_sprite(spr_healthbar_border,0,healthbar_x,healthbar_y)