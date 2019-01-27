/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0E77E765
/// @DnDArgument : "var" "keyboard_check(vk_control)"
/// @DnDArgument : "value" "1"
if(keyboard_check(vk_control) == 1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 060059C9
	/// @DnDParent : 0E77E765
	/// @DnDArgument : "expr" "tile_place_meeting(x+player.dir_x,y+player.dir_y,"Collision")"
	/// @DnDArgument : "var" "is_meeting"
	is_meeting = tile_place_meeting(x+player.dir_x,y+player.dir_y,"Collision");

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 13EC6E98
	/// @DnDParent : 0E77E765
	/// @DnDArgument : "msg" "is_meeting"
	show_debug_message(string(is_meeting));

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 28A0B26B
	/// @DnDParent : 0E77E765
	/// @DnDArgument : "expr" "place_free(x+player.dir_x, y+player.dir_y)"
	/// @DnDArgument : "var" "is_free"
	is_free = place_free(x+player.dir_x, y+player.dir_y);

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 5A0ECCB7
	/// @DnDParent : 0E77E765
	/// @DnDArgument : "expr" "!is_meeting && is_free"
	if(!is_meeting && is_free)
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 476E2F5F
		/// @DnDParent : 5A0ECCB7
		/// @DnDArgument : "expr" "abs(player.dir_x) ==1 and abs(player.dir_y) ==1"
		if(abs(player.dir_x) ==1 and abs(player.dir_y) ==1)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 75B051D3
			/// @DnDParent : 476E2F5F
			/// @DnDArgument : "var" "player.dir_x"
			player.dir_x = 0;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 49AFB1A6
			/// @DnDParent : 476E2F5F
			/// @DnDArgument : "var" "player.dir_y"
			player.dir_y = 0;
		}
	
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 56A3C0EA
		/// @DnDParent : 5A0ECCB7
		/// @DnDArgument : "x" "player.dir_x * (player.player_speed*0.9)"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "player.dir_y * (player.player_speed*0.9)"
		/// @DnDArgument : "y_relative" "1"
		x += player.dir_x * (player.player_speed*0.9);
		y += player.dir_y * (player.player_speed*0.9);
	}
}