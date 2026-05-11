var up, down, accept, back;

up 		= keyboard_check_pressed(ord("W"));
down 	= keyboard_check_pressed(ord("S"));
accept 	= keyboard_check_pressed(vk_enter);
back	= keyboard_check_pressed(vk_escape);

if up {
	image_index -= 1;	
}

if down {
	image_index += 1;	
}

if image_index == 0 and accept {
	room_goto(rm_house);
}

if image_index == 1 and accept {
	room_goto(rm_credits);	
}

if image_index == 2 and accept {
	game_end();
} 