/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 4444A87A
/// @DnDInput : 3
/// @DnDArgument : "var" "is_meeting"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "tile_place_meeting"
/// @DnDArgument : "arg" "x"
/// @DnDArgument : "arg_1" "y-1"
/// @DnDArgument : "arg_2" ""Collision""
var is_meeting = tile_place_meeting(x, y-1, "Collision");

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 1721673F
/// @DnDArgument : "expr" "!is_meeting and !obj_hud_life.cagou and !did_win"
if(!is_meeting and !obj_hud_life.cagou and !did_win)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 2386D820
	/// @DnDParent : 1721673F
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-player_speed"
	/// @DnDArgument : "y_relative" "1"
	
	y += -player_speed;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4951D678
	/// @DnDParent : 1721673F
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "var" "dir_y"
	dir_y = -1;
}