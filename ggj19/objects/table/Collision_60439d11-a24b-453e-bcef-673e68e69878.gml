/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 663A2551
/// @DnDInput : 3
/// @DnDArgument : "var" "is_meeting"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "tile_place_meeting"
/// @DnDArgument : "arg" "x"
/// @DnDArgument : "arg_1" "y"
/// @DnDArgument : "arg_2" ""Collision""
var is_meeting = tile_place_meeting(x, y, "Collision");

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2C25D199
/// @DnDArgument : "var" "is_meeting"
if(is_meeting == 0)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 386F694E
	/// @DnDParent : 2C25D199
	/// @DnDArgument : "code" "if (keyboard_check(vk_control)) {$(13_10)	deltaPlayerX = player.x - player.xprevious$(13_10)	deltaPlayerY = player.y - player.yprevious$(13_10)	x = x + deltaPlayerX$(13_10)	y = y + deltaPlayerY$(13_10)	pressionado = 1$(13_10)}$(13_10)"
	if (keyboard_check(vk_control)) {
		deltaPlayerX = player.x - player.xprevious
		deltaPlayerY = player.y - player.yprevious
		x = x + deltaPlayerX
		y = y + deltaPlayerY
		pressionado = 1
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 6EBD26B4
else
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 1D77C103
	/// @DnDParent : 6EBD26B4
	/// @DnDArgument : "code" "pressionado = 0$(13_10)x = xprevious$(13_10)y = yprevious"
	pressionado = 0
	x = xprevious
	y = yprevious
}