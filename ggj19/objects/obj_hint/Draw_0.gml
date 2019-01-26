/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 60B9C634
/// @DnDArgument : "code" "$(13_10)if(hint_exists == false){$(13_10)	var xx = 0;$(13_10)	var yy = 30;$(13_10)$(13_10)	draw_set_valign(fa_middle);$(13_10)	draw_set_halign(fa_center);$(13_10)	draw_set_color(c_black);$(13_10)$(13_10)	draw_set_font(fnt_hint);$(13_10)$(13_10)	draw_text(x + xx, y + yy, hint_text);$(13_10)	$(13_10)	hint_exists = true;$(13_10)}"

if(hint_exists == false){
	var xx = 0;
	var yy = 30;

	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	draw_set_color(c_black);

	draw_set_font(fnt_hint);

	draw_text(x + xx, y + yy, hint_text);
	
	hint_exists = true;
}