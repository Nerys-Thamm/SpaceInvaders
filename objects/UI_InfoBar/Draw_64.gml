/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_left)
draw_set_font(DefaultFont)
draw_sprite(UI_Spr_Background,1,0,800)
draw_sprite_ext(UI_Spr_HealthFront, 1, 950, 860, max(0,global.PlayerHealth/global.PlayerHealthMax),1,0,c_white,1)
draw_text_transformed(610,850,"Hull Integrity",4,4,0)
draw_text_transformed(50,840,"Wave: " + string(global.GameLevel),4,4,0)
draw_text_transformed(50,880,"Aliens left: " + string(global.AlienCount),4,4,0)
draw_text_transformed(50,920,"Score: " + string(global.PlayerScore),4,4,0)
