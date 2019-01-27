/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0DFED887
/// @DnDArgument : "var" "keyboard_check(vk_space)"
/// @DnDArgument : "value" "1"
if(keyboard_check(vk_space) == 1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 70339AE9
	/// @DnDParent : 0DFED887
	/// @DnDArgument : "expr" "spr_door_opening"
	/// @DnDArgument : "var" "sprite_index"
	sprite_index = spr_door_opening;
}