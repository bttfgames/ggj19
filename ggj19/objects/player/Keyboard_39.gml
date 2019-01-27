/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 629E76CC
/// @DnDInput : 3
/// @DnDArgument : "var" "is_meeting"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "tile_place_meeting"
/// @DnDArgument : "arg" "x+1"
/// @DnDArgument : "arg_1" "y"
/// @DnDArgument : "arg_2" ""Collision""
var is_meeting = tile_place_meeting(x+1, y, "Collision");

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 72DA47A7
/// @DnDArgument : "expr" "!is_meeting and !obj_hud_life.cagou and !did_win"
if(!is_meeting and !obj_hud_life.cagou and !did_win)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 6FDFEEE4
	/// @DnDParent : 72DA47A7
	/// @DnDArgument : "x" "player_speed"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	x += player_speed;

	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 11AA9939
	/// @DnDParent : 72DA47A7
	/// @DnDArgument : "xscale" "-1"
	image_xscale = -1;
	image_yscale = 1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7774ED43
	/// @DnDParent : 72DA47A7
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "dir_x"
	dir_x = 1;
}