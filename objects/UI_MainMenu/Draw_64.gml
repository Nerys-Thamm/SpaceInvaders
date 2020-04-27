//Draws main menu gui to screen
draw_set_halign(fa_middle)
draw_set_font(OptionFont)
draw_text_transformed(500, 300, "Play",1,1,0)
draw_text_transformed(1000, 300, "Quit",1,1,0)

draw_set_font(TitleFont)
draw_text(750,100,"Space Invaders: Swarm")
draw_set_font(OptionFont)
draw_set_halign(fa_left)
draw_text_transformed(10, 930, "Made by Nerys Thamm, Media Design School (C)2020",1,1,0)