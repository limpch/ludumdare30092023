function spawnHumanLogic(){
	if timeBeforeNewHuman > 0 timeBeforeNewHuman--
	else {
		if array_length(obBoxSpawner.boxes) > 0 {
			randomize()
			var random_box_index = random_range(0, array_length(obBoxSpawner.boxes))
			spawnHuman(obBoxSpawner.boxes[random_box_index])
			timeBeforeNewHuman = 1000000
		} else humansQueueCount = 1
	}
}

function spawnHuman(box) {
	actHuman = instance_create_depth(x, y - 9, -1, obVisitor)
	
	randomize()
	var randomSprite = humanSprites[round(random_range(0, array_length(humanSprites) -1))]
	
	actHuman.defaultSprite = randomSprite.defaultSprite
	actHuman.runSprite = randomSprite.runSprite
	
	actHuman.boxCode = box.number
	image_index = 1
	alarm[0] = 10
}