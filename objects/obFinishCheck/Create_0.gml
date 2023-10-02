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

reviews = [new reviewBox(room_width / 2 - 64, room_height / 2, 4, "Catrin", "Nice, clean place, staff provide good service"),
new reviewBox(room_width / 2 - 64, room_height / 2, 4, "Catrin", "Nice, clean place, staff provide good service"),
new reviewBox(room_width / 2 - 64, room_height / 2, 4, "Catrin", "Nice, clean place, staff provide good service"),
]