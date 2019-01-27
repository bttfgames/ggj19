/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0CCE03D3
/// @DnDArgument : "code" "if (keyboard_check(vk_control)) {$(13_10)		deltaPlayerX = player.x - player.xprevious$(13_10)		deltaPlayerY = player.y - player.yprevious$(13_10)		x = x + deltaPlayerX$(13_10)		y = y + deltaPlayerY$(13_10)		pressionado = 1$(13_10)	}"
if (keyboard_check(vk_control)) {
		deltaPlayerX = player.x - player.xprevious
		deltaPlayerY = player.y - player.yprevious
		x = x + deltaPlayerX
		y = y + deltaPlayerY
		pressionado = 1
	}

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 66E7B088
/// @DnDInput : 3
/// @DnDArgument : "var" "is_meeting"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "tile_place_meeting"
/// @DnDArgument : "arg" "x-1"
/// @DnDArgument : "arg_1" "y"
/// @DnDArgument : "arg_2" ""Collision""
var is_meeting = tile_place_meeting(x-1, y, "Collision");

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 098669BD
/// @DnDArgument : "var" "is_meeting"
if(is_meeting == 0)
{

}