/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7FB468AD
/// @DnDArgument : "code" "if( keyboard_check(vk_left) or keyboard_check(vk_right) or$(13_10)	keyboard_check(vk_up) or keyboard_check(vk_down) ){$(13_10)		if( !place_free(x,y) and keyboard_check(vk_control) ){$(13_10)			sprite_index = spr_player_push;$(13_10)		}else if(!keyboard_check(vk_control)){$(13_10)			sprite_index = spr_player_walk;$(13_10)		}$(13_10)	}else{$(13_10)		sprite_index = spr_player_idle;$(13_10)	}$(13_10)	$(13_10)	$(13_10)if( !keyboard_check(vk_left) && !keyboard_check(vk_right)){$(13_10)	dir_x = 0;	$(13_10)}$(13_10)if( !keyboard_check(vk_up) && !keyboard_check(vk_down) ){$(13_10)	dir_y = 0;$(13_10)}"
if( keyboard_check(vk_left) or keyboard_check(vk_right) or
	keyboard_check(vk_up) or keyboard_check(vk_down) ){
		if( !place_free(x,y) and keyboard_check(vk_control) ){
			sprite_index = spr_player_push;
		}else if(!keyboard_check(vk_control)){
			sprite_index = spr_player_walk;
		}
	}else{
		sprite_index = spr_player_idle;
	}
	
	
if( !keyboard_check(vk_left) && !keyboard_check(vk_right)){
	dir_x = 0;	
}
if( !keyboard_check(vk_up) && !keyboard_check(vk_down) ){
	dir_y = 0;
}