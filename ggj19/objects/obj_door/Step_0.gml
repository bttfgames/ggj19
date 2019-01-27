/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 69184458
/// @DnDArgument : "expr" "image_index >= 5.8"
if(image_index >= 5.8)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2A8672DC
	/// @DnDParent : 69184458
	/// @DnDArgument : "expr" "spr_door_open"
	/// @DnDArgument : "var" "sprite_index"
	sprite_index = spr_door_open;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0A06B1DE
	/// @DnDParent : 69184458
	/// @DnDArgument : "var" "solid"
	solid = 0;
}