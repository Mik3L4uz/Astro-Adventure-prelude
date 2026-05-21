draw_set_font(main_font);
draw_set_halign(fa_center);

switch (menu_state) {
	
	case MENU_STATE.MAIN:
	
		for (var i = 0; i < array_length(menu_items); i++)
		{
		    var text = menu_items[i];

		    if (i == selected)
		    {
		        text = "> " + text + " <";
		    }

		    draw_text(display_get_gui_width() / 2, (i * 35) - 65 + display_get_gui_height() / 2, text);
		}

		draw_set_font(title_font);

		draw_text(display_get_gui_width() / 2, 55, "TITOLO SUPER FIGO DEL GIOCO")

		draw_set_font(main_font);
		
		break;
		
	case MENU_STATE.CREDITS:
	
		draw_set_font(main_font)
		
		draw_text(display_get_gui_width() / 2, display_get_gui_height() / 2 - 50, "Made with love and passion by BALDI");
		draw_text(display_get_gui_width() / 2, display_get_gui_height() / 2 - 10, "Also thanks to the youtube guy");
		draw_text(display_get_gui_width() / 2, display_get_gui_height() / 2 + 140, "Press [ESC] to go back");
		
		break;
		
	case MENU_STATE.OFF:
	
		draw_set_font(main_font)
}