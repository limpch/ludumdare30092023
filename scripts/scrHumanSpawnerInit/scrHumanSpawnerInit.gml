function humanSpawnerInit() {
	timeBeforeNewHumanMin = 10 * 60
	timeBeforeNewHumanMax = 20 * 60
	timeBeforeNewHuman = random_range(timeBeforeNewHumanMin, timeBeforeNewHumanMax)
	
	humansQueueCount = 0
	actHuman = noone
}