/// @description Insert description here
// You can write your code in this editor

if !gameStart {
	draw_set_font(fBig)
	draw_set_colour(hex($625565))
	draw_set_halign(fa_center)

	draw_text(room_width / 2, room_height - 24, "press space")
	draw_set_halign(fa_left)
}