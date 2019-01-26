/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 7536D9D6
/// @DnDInput : 3
/// @DnDArgument : "var" "is_meeting"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "tile_place_meeting"
/// @DnDArgument : "arg" "x"
/// @DnDArgument : "arg_1" "y+player_speed"
/// @DnDArgument : "arg_2" ""Collision""
var is_meeting = tile_place_meeting(x, y+player_speed, "Collision");

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2E443EE8
/// @DnDArgument : "var" "is_meeting"
if(is_meeting == 0)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 444B27DB
	/// @DnDParent : 2E443EE8
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "player_speed"
	/// @DnDArgument : "y_relative" "1"
	
	y += player_speed;
}