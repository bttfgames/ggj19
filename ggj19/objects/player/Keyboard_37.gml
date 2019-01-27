/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 5FA3715A
/// @DnDInput : 3
/// @DnDArgument : "var" "is_meeting"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "tile_place_meeting"
/// @DnDArgument : "arg" "x-1"
/// @DnDArgument : "arg_1" "y"
/// @DnDArgument : "arg_2" ""Collision""
var is_meeting = tile_place_meeting(x-1, y, "Collision");

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 32027BB0
/// @DnDArgument : "expr" "!is_meeting and !obj_hud_life.cagou and !did_win"
if(!is_meeting and !obj_hud_life.cagou and !did_win)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 052DBA13
	/// @DnDParent : 32027BB0
	/// @DnDArgument : "x" "-player_speed"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	x += -player_speed;

	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 7BEC229D
	/// @DnDParent : 32027BB0
	image_xscale = 1;
	image_yscale = 1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3AFEDD83
	/// @DnDParent : 32027BB0
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "var" "dir_x"
	dir_x = -1;
}