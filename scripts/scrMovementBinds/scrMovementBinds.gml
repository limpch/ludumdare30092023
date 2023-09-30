function movementBinds() {
	topButton = clamp(keyboard_check(ord("W")) + keyboard_check(vk_up), -1, 1) 
	downButton = clamp(keyboard_check(ord("S")) + keyboard_check(vk_down), -1, 1) 
	rightButton = clamp(keyboard_check(ord("D")) + keyboard_check(vk_right), -1, 1) 
	leftButton = clamp(keyboard_check(ord("A")) + keyboard_check(vk_left), -1, 1)
}