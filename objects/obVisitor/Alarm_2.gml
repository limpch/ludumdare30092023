/// @description Уходит

obDoor.image_index = 0
obGameLogicVisitorMood.tutorialState = STATE.NONE
instance_destroy()
randomize()
obDoor.timeBeforeNewHuman = random_range(obDoor.timeBeforeNewHumanMin, obDoor.timeBeforeNewHumanMax)
