/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 629E76CC
/// @DnDInput : 3
/// @DnDArgument : "var" "is_meeting"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "tile_place_meeting"
/// @DnDArgument : "arg" "x+player_speed"
/// @DnDArgument : "arg_1" "y"
/// @DnDArgument : "arg_2" ""Collision""
var is_meeting = tile_place_meeting(x+player_speed, y, "Collision");

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7119F657
/// @DnDArgument : "var" "is_meeting"
if(is_meeting == 0)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 6FDFEEE4
	/// @DnDParent : 7119F657
	/// @DnDArgument : "x" "player_speed"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	x += player_speed;

	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 11AA9939
	/// @DnDParent : 7119F657
	/// @DnDArgument : "xscale" "-1"
	image_xscale = -1;
	image_yscale = 1;
}