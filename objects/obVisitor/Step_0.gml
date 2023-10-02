moveBySpeed()

isUpOfTable = place_meeting(x, y + 16, obTable)

getBox()

putTicket()

goAway()

if !isPutTicket {
	if obBoxSpawner.getted == 16 alarm[4] = 5 * 60
	else alarm[4] = 12 * 60
}

if waitLevel == 1 and !isCanGoAway
	obGameLogicVisitorMood.tutorialState = STATE.VISITOR_MOOD_TWO

if (waitLevel == 2 or isUpset) and !isCanGoAway 
	obGameLogicVisitorMood.tutorialState = STATE.VISITOR_MOOD_THREE

if waitLevel == 3 and !isCanGoAway {
	isCanGoAway = true
	isUpset = true
}

// ANIMATION

if ySpeed != 0 sprite_index = runSprite
else sprite_index = defaultSprite

depth = -y