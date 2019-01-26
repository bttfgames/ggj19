/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6D79F9EE
/// @DnDArgument : "code" "var move = 0;$(13_10)$(13_10)// move menu up$(13_10)move -= max(keyboard_check_pressed(vk_up), keyboard_check_pressed(ord("W")), 0);$(13_10)$(13_10)// move menu down$(13_10)move += max(keyboard_check_pressed(vk_down), keyboard_check_pressed(ord("S")), 0);$(13_10)$(13_10)if(move  != 0) {$(13_10)	pos += move;$(13_10)	if (pos < 0) pos = array_length_1d(menu) - 1;$(13_10)	if (pos > array_length_1d(menu) - 1) pos = 0;$(13_10)}$(13_10)$(13_10)var push;$(13_10)$(13_10)push = max(keyboard_check_pressed(vk_enter), keyboard_check_pressed(vk_space), 0);$(13_10)$(13_10)if (push == 1) {$(13_10)   // select menu item action$(13_10)   switch (pos) {$(13_10)	case 0:{$(13_10)	   room_goto(room_menu);// room_goto_next();$(13_10)	   break;$(13_10)	}$(13_10)    default: break;$(13_10)   }$(13_10)}"
var move = 0;

// move menu up
move -= max(keyboard_check_pressed(vk_up), keyboard_check_pressed(ord("W")), 0);

// move menu down
move += max(keyboard_check_pressed(vk_down), keyboard_check_pressed(ord("S")), 0);

if(move  != 0) {
	pos += move;
	if (pos < 0) pos = array_length_1d(menu) - 1;
	if (pos > array_length_1d(menu) - 1) pos = 0;
}

var push;

push = max(keyboard_check_pressed(vk_enter), keyboard_check_pressed(vk_space), 0);

if (push == 1) {
   // select menu item action
   switch (pos) {
	case 0:{
	   room_goto(room_menu);// room_goto_next();
	   break;
	}
    default: break;
   }
}