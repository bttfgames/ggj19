/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0E77E765
/// @DnDArgument : "var" "keyboard_check(vk_control)"
/// @DnDArgument : "value" "1"
if(keyboard_check(vk_control) == 1)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3D46EEB2
	/// @DnDParent : 0E77E765
	/// @DnDArgument : "var" "tile_place_meeting(x+player.dir_x,y+player.dir_y,"Collision")"
	if(tile_place_meeting(x+player.dir_x,y+player.dir_y,"Collision") == 0)
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 56A3C0EA
		/// @DnDParent : 3D46EEB2
		/// @DnDArgument : "x" "player.dir_x * (player.player_speed*0.8)"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "player.dir_y * (player.player_speed*0.8)"
		/// @DnDArgument : "y_relative" "1"
		x += player.dir_x * (player.player_speed*0.8);
		y += player.dir_y * (player.player_speed*0.8);
	}
}