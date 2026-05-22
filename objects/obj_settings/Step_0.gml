// Logica fullscreen
if keyboard_check_pressed(vk_f11) {full_screen = !full_screen}
window_set_fullscreen(full_screen);

// Logica menu
if (keyboard_check_pressed(vk_tab)) {
	menu_open = !menu_open
	global.playing = !global.playing;
	}

if (menu_open)
{
    if (keyboard_check_pressed(ord("S")))
    {
        overlay_selected++;
    }

    if (keyboard_check_pressed(ord("W")))
    {
        overlay_selected--;
    }

    overlay_selected = clamp(
        overlay_selected,
        0,
        array_length(overlay_items) - 1
    );
}