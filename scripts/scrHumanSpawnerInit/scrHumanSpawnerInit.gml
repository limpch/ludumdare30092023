function humanSpawnerInit() {
	image_speed = 0
	timeBeforeNewHumanMin = 10 * 60
	timeBeforeNewHumanMax = 20 * 60
	randomize()
	timeBeforeNewHuman = random_range(timeBeforeNewHumanMin, timeBeforeNewHumanMax)
	
	humansQueueCount = 0
	actHuman = noone
	
	alarm[1] = 3 * 60 * 60
}