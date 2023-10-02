/// @description Забирает или оставляет бокс

isCanGoAway = true

obBoxSpawner.boxes = array_filter(obBoxSpawner.boxes, function (box) {
	return obTable.boxInstance.id != box.id
})

if !isUpset {
	obTable.isBox = false
	obTable.boxInstance = noone
} else {
	obFinishCheck.hp--
}

