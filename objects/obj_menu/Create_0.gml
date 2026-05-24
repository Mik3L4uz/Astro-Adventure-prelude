full_screen = false;		// Booleano che gestisce il fullscreen
menu_open = false;			// Booleano che gestisce il menu in game

// MENU STATE //

menu_state = MENU_STATE.MAIN;
global.in_main_menu = true;
global.playing = false;

// -- MAIN MENU -- //

main_menu_items = ["Start game", "Settings", "Credits", "Quit game"];
menu_length = array_length(main_menu_items);

op_border = 8;
op_space = 16;

main_menu_selected = 0;

// -- INGAME MENU -- //

ingame_menu_items = ["Inventory", "Astrowatch", "Quit to title"];
ingame_menu_selected = 0;		// Indice che indica dove è la selezione

// -- WHATCH -- //

whatch_items = ["Selezione 1", "Selezione 2", "Selezione 3", "Selezione 4", "Selezione 5"];
whatch_selected = 0;		// Indice che indica dove è la selezione

// -- INVENTORY -- //

inv_items = ["Oggetto 1", "Oggetto 2", "Oggetto 3", "Oggetto 4"];
inv_selected = 0;		// Indice che indica dove è la selezione