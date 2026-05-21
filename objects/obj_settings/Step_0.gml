if full_screen == false {if keyboard_check_pressed(vk_f11) {full_screen = true;}}
else if full_screen == true {if keyboard_check_pressed(vk_f11) {full_screen = false;}}

window_set_fullscreen(full_screen);
