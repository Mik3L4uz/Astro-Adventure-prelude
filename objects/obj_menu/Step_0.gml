// Logica fullscreen (premo e faccio il toggle)
if keyboard_check_pressed(vk_f11) {full_screen = !full_screen}
window_set_fullscreen(full_screen);

switch (menu_state) {
	
	case MENU_STATE.MAIN:
	
		if (keyboard_check_pressed(ord("S"))) {main_menu_selected++}

		if (keyboard_check_pressed(ord("W"))) {main_menu_selected--}

		main_menu_selected = clamp(main_menu_selected, 0, menu_length - 1);

		if (keyboard_check_pressed(vk_enter))
		{
		    switch(main_menu_selected)
		    {
		        case 0:
				
		            room_goto(rm_bedroom);
					menu_state = MENU_STATE.OFF
					global.in_main_menu = false;
					global.playing = true;
		            break;

		        case 1:

					menu_state = MENU_STATE.OPTIONS
					
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

		if (keyboard_check_pressed(vk_escape)) {menu_state = MENU_STATE.MAIN}
		
		break;
	
	case MENU_STATE.INGAME:
	
		global.playing = false;
		
		if (keyboard_check_pressed(vk_tab)) {
			menu_state = MENU_STATE.OFF
			global.playing = true;
		}
		
		if (keyboard_check_pressed(ord("S")))
	    {
	        ingame_menu_selected++;
	    }

	    if (keyboard_check_pressed(ord("W")))
	    {
	        ingame_menu_selected--;
	    }

	    ingame_menu_selected = clamp(		// Clamp blocca i valori tra un certo numero
	        ingame_menu_selected,
	        0,
	        array_length(ingame_menu_items) - 1
	    );
		
		if keyboard_check_pressed(vk_enter) {
			
			switch ingame_menu_selected{
			
				case 0:
					
					menu_state = MENU_STATE.INV
					
					break;
					
				case 1:
				
					menu_state = MENU_STATE.WHATCH
					
					break;
					
				case 2:
				
					global.in_main_menu = true;
					global.playing = false;
					menu_state = MENU_STATE.MAIN
					room_goto(rm_title_screen);
					ingame_menu_selected = 0;
					instance_destroy(obj_player);
					
					
					break;
			
			}
			
		}
		
		break;
		
	case MENU_STATE.WHATCH:
	
		global.playing = false;
	
		if (keyboard_check_pressed(vk_tab)) {
			menu_state = MENU_STATE.OFF
			global.playing = true;
			break;
		}
		
		if (keyboard_check_pressed(ord("S")))
	    {
	        whatch_selected++;
	    }

	    if (keyboard_check_pressed(ord("W")))
	    {
	        whatch_selected--;
	    }

	    whatch_selected = clamp(		// Clamp blocca i valori tra un certo numero
	        whatch_selected,
	        0,
	        array_length(whatch_items) - 1
	    );
		
		if (keyboard_check_pressed(vk_escape)) {
			
			menu_state = MENU_STATE.INGAME
			break;
			
		}
		
		break;
			
	case MENU_STATE.INV:
	
		global.playing = false;
	
		if (keyboard_check_pressed(vk_tab)) {
			menu_state = MENU_STATE.OFF
			global.playing = true;
			break;
		}
		
		if (keyboard_check_pressed(ord("S")))
	    {
	        inv_selected++;
	    }

	    if (keyboard_check_pressed(ord("W")))
	    {
	        inv_selected--;
	    }

	    inv_selected = clamp(		// Clamp blocca i valori tra un certo numero
	        inv_selected,
	        0,
	        array_length(inv_items) - 1
	    );
		
		if (keyboard_check_pressed(vk_escape)) {
			
			menu_state = MENU_STATE.INGAME
			break;
			
		}
			
		break;
	
	case MENU_STATE.OPTIONS:
		
		if (keyboard_check_pressed(vk_escape)) {menu_state = MENU_STATE.MAIN}
		
	case MENU_STATE.OFF:
	
		if (keyboard_check_pressed(vk_tab)) {menu_state = MENU_STATE.INGAME}
		
		break;
		
}