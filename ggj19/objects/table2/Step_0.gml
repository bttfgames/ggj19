/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7FB468AD
/// @DnDArgument : "code" "if( keyboard_check(vk_left) or keyboard_check(vk_right) or$(13_10)	keyboard_check(vk_up) or keyboard_check(vk_down) ){$(13_10)		sprite_index = spr_player_walk;$(13_10)	}else{$(13_10)		sprite_index = spr_player_idle;$(13_10)	}"
if( keyboard_check(vk_left) or keyboard_check(vk_right) or
	keyboard_check(vk_up) or keyboard_check(vk_down) ){
		sprite_index = spr_player_walk;
	}else{
		sprite_index = spr_player_idle;
	}