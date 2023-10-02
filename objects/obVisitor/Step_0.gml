moveBySpeed()

isUpOfTable = place_meeting(x, y + 16, obTable)

putTicket()

getBox()

goAway()

if waitLevel == 1 and !isCanGoAway
	obGameLogicVisitorMood.tutorialState = STATE.VISITOR_MOOD_TWO

if (waitLevel == 2 or isUpset) and !isCanGoAway 
	obGameLogicVisitorMood.tutorialState = STATE.VISITOR_MOOD_THREE

if waitLevel == 3 and !isCanGoAway {
	isCanGoAway = true
	isUpset = true
}