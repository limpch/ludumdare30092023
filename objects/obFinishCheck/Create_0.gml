boxToFinishMax = 16

boxToFinish = boxToFinishMax
hp = 3

visitorsHappy = 0 
visitorsSad = 0
visitorsRage = 0
visitorsDoesntGetBox = 0
boxesDone = 0

overallPoints = 0
stars = 0
starsToShow = 0
starsMax = 5

isGameEnd = false
result = ""
loseBy = ""

timer = 60

gameOverScreenAlpha = 0
canRestart = false

boxQueueTimesSad = 0
boxQueueTimesRage = 0

depth = - 999999999999999999999999999999

reviews = [
	new reviewBox(room_width / 2 - 64, room_height / 2 - 30, 1, "Catrin", "I haven't seen such a \"service\" since the Soviet Department."),
	new reviewBox(room_width / 2 - 64, room_height / 2 - 30, 1, "Catrin", "Receiving the next order, I faced rudeness and unprofessionalism."),
	new reviewBox(room_width / 2 - 64, room_height / 2 - 30, 2, "Catrin", "Very disgusting service. Rudeness, incompetence."),
	new reviewBox(room_width / 2 - 64, room_height / 2 - 30, 2, "Catrin", "Dirty, the staff is not particularly friendly."),
	new reviewBox(room_width / 2 - 64, room_height / 2 - 30, 3, "Catrin", "Regular queues to receive."),
	new reviewBox(room_width / 2 - 64, room_height / 2 - 30, 3, "Catrin", "An incompetent manager is sitting in the office."),
	new reviewBox(room_width / 2 - 64, room_height / 2 - 30, 4, "Catrin", "Nice, clean place, staff provide good service"),
	new reviewBox(room_width / 2 - 64, room_height / 2 - 30, 4, "Catrin", "A good point."),
	new reviewBox(room_width / 2 - 64, room_height / 2 - 30, 5, "Catrin", "All the amenities for buyers are provided here."),
	new reviewBox(room_width / 2 - 64, room_height / 2 - 30, 5, "Catrin", "Close to home, good attitude."),
]

reviewIndexesMin = 0
reviewIndexesMax = 0

reviewIndex = 0

maxRewiewTimer = 5 * 60
rewiewTimer = maxRewiewTimer