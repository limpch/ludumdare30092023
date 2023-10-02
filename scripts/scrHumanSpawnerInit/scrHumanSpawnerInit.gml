function humanSpawnerInit() {
	image_speed = 0
	timeBeforeNewHumanMin = 7 * 60
	timeBeforeNewHumanMax = 14 * 60
	randomize()
	timeBeforeNewHuman = random_range(timeBeforeNewHumanMin, timeBeforeNewHumanMax)
	
	humansQueueCount = 0
	actHuman = noone
	
	humanSprites = [
		{
			defaultSprite: spVisitor1Stay,
			runSprite: spVisitor1Run
		},
		{
			defaultSprite: spVisitor2Stay,
			runSprite: spVisitor2Run
		},
		{
			defaultSprite: spVisitor2Stay,
			runSprite: spVisitor2Run
		}
	]
}