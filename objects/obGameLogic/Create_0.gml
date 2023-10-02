/// @description Insert description here
// You can write your code in this editor
depth = -99999

var enum STATE {
	NONE,
	TICKET,
	COMPUTER_TICKET,
	TABLE_BOX,
	COMPUTER_NUMBER,
	SCALES,
	STICKER,
	SCAN,
	PLAYER_STICKER,
	NUMBER,
	BOX_MOOD_TWO,
	BOX_MOOD_THREE,
	VISITOR_MOOD_TWO,
	VISITOR_MOOD_THREE,
}

tutorialState = STATE.NONE

tutorialBox = new messageBox(obScales.x, obScales.y - 16, spBoxIcon)