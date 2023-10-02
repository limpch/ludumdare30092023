/// @description Insert description here
// You can write your code in this editor
draw_self()

if isGameEnd {
	if result == "LOSE" {
		draw_sprite_ext(spGameOver, 0, 0, 0, 1, 1, 0, c_white, gameOverScreenAlpha)
		draw_set_alpha(gameOverScreenAlpha)
		draw_set_font(fBig)
		draw_set_colour(hex($625565))
		draw_set_halign(fa_center)

		draw_text_ext(room_width / 2 + random_range(-1, 1), 32 + random_range(-1, 1), loseBy, 12, 240)
		draw_text_ext(room_width / 2 + random_range(-1, 1), room_height - 40 + random_range(-1, 1), "SPACE to \n humiliate yourself again", 12, 240)
		
		draw_set_halign(fa_left)
		draw_set_alpha(1)
	}
	
	if result == "WIN" {
		draw_set_font(fBig)
		draw_set_colour(hex($625565))
		
		draw_set_halign(fa_center)
		draw_text_ext(room_width / 2, 16, "your rating", 12, 240)
		draw_text_ext(room_width / 2, room_height - 40, "SPACE to \n humiliate yourself again", 12, 240)
		draw_set_halign(fa_left)
		
		draw_set_alpha(1)
		
		var xx = (room_width / 2) - ((starsMax-1) / 2) * 16
		var yy = 42
		for(var i = 0; i < 5; i++) {
			if i < starsToShow {
				draw_sprite(spStars, 0, xx + i * 16, yy)
				if stars > i draw_sprite(spStars, 1, xx + i * 16, yy)
			}
		}
		
		drawReview(reviews[reviewIndex])
		if rewiewTimer > 0 rewiewTimer-- else {
			reviewIndex = irandom_range(reviewIndexesMin, reviewIndexesMax)
			rewiewTimer = maxRewiewTimer
		}
		
	}
}