/// @description Уходит

obDoor.image_index = 0
audio_play_sound(sndDoor, 1, 0)
obGameLogicVisitorMood.tutorialState = STATE.NONE

if isUpset obFinishCheck.visitorsDoesntGetBox += 1
else obFinishCheck.boxesDone += 1

if waitLevel == 0 obFinishCheck.visitorsHappy += 1
if waitLevel == 1 obFinishCheck.visitorsSad += 1
if waitLevel == 2 obFinishCheck.visitorsRage += 1

if obFinishCheck.hp == 1 and isUpset
	obFinishCheck.loseBy = "Too many visitors did not get the box"
	
if isUpset obFinishCheck.hp--

obComputer.isTicket = false
obGameLogic.tutorialState = STATE.NONE

instance_destroy()
randomize()
obDoor.timeBeforeNewHuman = random_range(obDoor.timeBeforeNewHumanMin, obDoor.timeBeforeNewHumanMax)
