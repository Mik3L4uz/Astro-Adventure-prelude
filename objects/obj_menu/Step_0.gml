
switch (menu_state) {
	
	case MENU_STATE.MAIN:
	
		if (keyboard_check_pressed(ord("S"))) {selected++}

		if (keyboard_check_pressed(ord("W"))) {selected--}

		selected = clamp(selected, 0, menu_length - 1);

		if (keyboard_check_pressed(vk_enter))
		{
		    switch(selected)
		    {
		        case 0:
		            room_goto(rm_bedroom);
					menu_state = MENU_STATE.OFF
		            break;

		        case 1:
		            show_debug_message("Apri opzioni");
		            break;

		        case 2:
					menu_state = MENU_STATE.CREDITS
					break;
			
				case 3:
					game_end(0);
					break;
		    }
		}
		
		break;
		
	case MENU_STATE.CREDITS:

		if (keyboard_check_pressed(vk_escape)) {
		menu_state = MENU_STATE.MAIN
		}
		
		break;
		
	case MENU_STATE.OFF:
		
		if (keyboard_check_pressed(vk_escape)) {
		menu_state = MENU_STATE.MAIN
		room_goto(rm_title_screen);
		instance_destroy(obj_player);
		}
		
}