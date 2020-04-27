//Draws game over gui to screen, displays player score
draw_set_halign(fa_middle)
draw_set_font(OptionFont)
draw_text_transformed(750, 300, "Your score is: " + string(global.PlayerScore),1,1,0)
draw_text_transformed(750, 600, "Press space to continue",1,1,0)

draw_set_font(TitleFont)
draw_text(750,100,"Game Over")