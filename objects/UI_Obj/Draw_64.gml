/// @description Insert description here
// You can write your code in this editor
draw_sprite(UI_Spr_Background,1,0,800)
draw_sprite_ext(UI_Spr_HealthFront, 1, 950, 860, max(0,global.PlayerHealth/global.PlayerHealthMax),1,0,c_white,1)
draw_text_transformed(650,860,"Hull Integrity",2,2,0)
draw_text_transformed(50,840,"Wave: " + string(global.GameLevel),2,2,0)
draw_text_transformed(50,880,"Aliens left: " + string(global.AlienCount),2,2,0)
draw_text_transformed(50,920,"Score: " + string(global.PlayerScore),2,2,0)
