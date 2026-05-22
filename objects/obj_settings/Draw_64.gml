if (menu_open) && (global.in_main_menu == false) {
	// luminosità abbassata
	draw_sprite(spr_black_alpha, 0, 0, 0)
	
    // sfondo panel
    draw_sprite_stretched(
        spr_menu,
        0,
        20,
        display_get_gui_height() - 180,
        250,
        160
    );

    // testo
    draw_set_font(main_font);
    draw_set_halign(fa_left);

    for (var i = 0; i < array_length(overlay_items); i++)
    {
        var text = overlay_items[i];

        if (i == overlay_selected)
        {
            text = "> " + text;
        }

        draw_text(
            40,
            display_get_gui_height() - 150 + (i * 35),
            text
        );
    }
}