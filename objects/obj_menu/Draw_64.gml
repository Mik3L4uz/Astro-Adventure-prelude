draw_set_font(main_font);
draw_set_halign(fa_center);

switch (menu_state) {
	
	case MENU_STATE.MAIN:
	
		for (var i = 0; i < array_length(main_menu_items); i++)
		{
		    var text = main_menu_items[i];

		    if (i == main_menu_selected)
		    {
		        text = "> " + text + " <";
		    }

		    draw_text(display_get_gui_width() / 2, (i * 35) - 65 + display_get_gui_height() / 2, text);
		}

		draw_set_font(title_font);

		draw_text(display_get_gui_width() / 2, 55, "ASTRO ADVENTURE")

		draw_set_font(main_font);
		
		break;
		
	case MENU_STATE.CREDITS:
	
		draw_set_font(main_font)
		
		draw_text(display_get_gui_width() / 2, display_get_gui_height() / 2 - 100, "Made with love and passion by BALDI");
		draw_text(display_get_gui_width() / 2, display_get_gui_height() / 2 - 50, "Also thanks to the youtube guy");
		draw_text(display_get_gui_width() / 2, display_get_gui_height() / 2 + 40, "My first GMS game btw");
		draw_text(display_get_gui_width() / 2, display_get_gui_height() / 2 + 140, "Press [ESC] to go back");
		
		break;
	
	case MENU_STATE.OPTIONS:
		
		draw_set_font(main_font)
		
		draw_text(display_get_gui_width() / 2, display_get_gui_height() / 2 - 100, "Options will be soon aviable");
		
		break;
		
	case MENU_STATE.INGAME:
		
		// luminosità abbassata (drawo uno sprite nero con alpha ridotto)
		draw_sprite(spr_black_alpha, 0, 0, 0)
	
	    // sfondo panel (drawo lo sprite con il nine slice)
	    draw_sprite_stretched(
	        spr_menu,
	        0,
	        20,
	        display_get_gui_height() - 180,
	        250,
	        160
	    );

	    // drawo i testi delle selezioni e metto un > come indicare la selezione
	    draw_set_font(main_font);
	    draw_set_halign(fa_left);

	    for (var i = 0; i < array_length(ingame_menu_items); i++)
	    {
	        var text = ingame_menu_items[i];

	        if (i == ingame_menu_selected) {
			
	            text = "> " + text;
	        }
			else {
		
				text = "   " + text
			}

	        draw_text(
	            40,
	            display_get_gui_height() - 150 + (i * 35),
	            text
	        );
	    }
	
		break;
	
	case MENU_STATE.WHATCH:
	
		draw_sprite(spr_black_alpha, 0, 0, 0)
		
	    // sfondo panel (drawo lo sprite con il nine slice)
	    draw_sprite_stretched(
	        spr_menu,
	        0,
	        20,
	        display_get_gui_height() - 490,
	        500,
	        470
	    );

	    // drawo i testi delle selezioni e metto un > come indicare la selezione
	    draw_set_font(main_font);
	    draw_set_halign(fa_left);
		
		draw_set_font(title_font);

		draw_text(120, display_get_gui_height() - 465, "ASTROWHATCH")

		draw_set_font(main_font);

	    for (var i = 0; i < array_length(whatch_items); i++)
	    {
	        var text = whatch_items[i];
			if (i == whatch_selected) {text = "> " + text;}
			else {text = "   " + text}

	        draw_text(
	            40,
	            display_get_gui_height() - 400 + (i * 35),
	            text
	        );
	    }
		
		break;
		
	case MENU_STATE.INV:
	
		draw_sprite(spr_black_alpha, 0, 0, 0)
	
	    // sfondo panel (drawo lo sprite con il nine slice)
	    draw_sprite_stretched(
	        spr_menu,
	        0,
	        20,
	        display_get_gui_height() - 490,
	        500,
	        470
	    );

	    // drawo i testi delle selezioni e metto un > come indicare la selezione
	    draw_set_font(main_font);
	    draw_set_halign(fa_left);
		
		draw_set_font(title_font);

		draw_text(163, display_get_gui_height() - 465, "INVENTORY")

		draw_set_font(main_font);

	    for (var i = 0; i < array_length(inv_items); i++)
	    {
	        var text = inv_items[i];
			if (i == inv_selected) {text = "> " + text;}
			else {text = "   " + text}

	        draw_text(
	            40,
	            display_get_gui_height() - 400 + (i * 35),
	            text
	        );
	    }
		
		break;
		
	case MENU_STATE.OFF:
	
		draw_set_font(main_font)
		
		break;
}