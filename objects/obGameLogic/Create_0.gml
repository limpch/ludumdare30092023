/// @description Insert description here
// You can write your code in this editor
depth = -99999

enum STATE {
	NONE,
	SCALES,
	STICKER,
	SCAN
}

tutorialState = STATE.NONE

tutorialBox = new messageBox(obScales.x, obScales.y - 16, spBoxIcon)