movementBinds()
scrBoxBinds()

scrSetPlayerSpeed()

moveBySpeed()
playerAnimation()

isUnderPrinter = place_meeting(x, y - 16, obPrinter) and topButton
isUnderScales = place_meeting(x, y - 16, obScales) and topButton
isUnderPC = place_meeting(x, y - 16, obComputer) and topButton
isUnderTable = place_meeting(x, y - 16, obTable) and topButton
isUnderMehs = isUnderPrinter or isUnderScales or isUnderPC or isUnderTable

scrCellPlayerIn()
scrSelectNextCell()
scrGetUpDownBox()
scrGetBoxInFromScales()

scrGetSticker()
scrPutSticker()

getTicketFromTable()
putTicketToPC()
getPutBoxToTable()

scrPushAwayFromTexture()
