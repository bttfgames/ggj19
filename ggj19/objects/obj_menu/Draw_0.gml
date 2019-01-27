/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7BD24E5D
/// @DnDArgument : "code" "draw_set_halign(fa_left);$(13_10)draw_set_valign(fa_middle);$(13_10)draw_set_font(fnt_menu);$(13_10)$(13_10)// initialize menu items$(13_10)$(13_10)var m;$(13_10)$(13_10)// set menu font color to white for shadow$(13_10)draw_set_color(c_white);$(13_10)for (m = 0 ; m < array_length_1d(menu); m+=1) {$(13_10)    draw_text( -text_shadow_offset + x + space, -text_shadow_offset + v_offset + y + (m *space), string(menu[m]));$(13_10)}$(13_10)$(13_10)// set color to black for text$(13_10)draw_set_color(make_color_rgb(10, 11, 15));$(13_10)for (m = 0 ; m < array_length_1d(menu); m+=1) {$(13_10)    draw_text(x + space, v_offset + y + (m *space), string(menu[m]));$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)draw_sprite(sprite_index, 0, x + 16, -6 + v_offset + y + (pos * space));"
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(fnt_menu);

// initialize menu items

var m;

// set menu font color to white for shadow
draw_set_color(c_white);
for (m = 0 ; m < array_length_1d(menu); m+=1) {
    draw_text( -text_shadow_offset + x + space, -text_shadow_offset + v_offset + y + (m *space), string(menu[m]));
}

// set color to black for text
draw_set_color(make_color_rgb(10, 11, 15));
for (m = 0 ; m < array_length_1d(menu); m+=1) {
    draw_text(x + space, v_offset + y + (m *space), string(menu[m]));
}





draw_sprite(sprite_index, 0, x + 16, -6 + v_offset + y + (pos * space));