/// @description Insert description here
// You can write your code in this editor
if recentlyCreated {
	var _xs = curvesAnimate(acBoxAnim, "x", (current_time + randomAnim) / 1000 mod 1)
	var _ys = curvesAnimate(acBoxAnim, "y", (current_time + randomAnim) / 1000 mod 1)

	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale * _xs, image_yscale * _ys, image_angle, c_white, image_alpha)
}
else {
	draw_self()
}