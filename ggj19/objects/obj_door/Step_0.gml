/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 792E5D51
/// @DnDArgument : "expr" "image_index >= 3.5"
if(image_index >= 3.5)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 169B49BC
	/// @DnDParent : 792E5D51
	/// @DnDArgument : "var" "solid"
	solid = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6AE4FBD6
	/// @DnDParent : 792E5D51
	/// @DnDArgument : "expr" "spr_door_open"
	/// @DnDArgument : "var" "sprite_index"
	sprite_index = spr_door_open;
}