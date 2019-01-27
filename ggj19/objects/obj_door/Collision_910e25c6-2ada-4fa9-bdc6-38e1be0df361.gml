/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 4F6A5E01
/// @DnDArgument : "expr" "global.has_key"
if(global.has_key)
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 3871BDEE
	/// @DnDParent : 4F6A5E01
	/// @DnDArgument : "var" "has_key"
	global.has_key = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 44D5DF6A
	/// @DnDParent : 4F6A5E01
	/// @DnDArgument : "expr" "spr_door_opening"
	/// @DnDArgument : "var" "sprite_index"
	sprite_index = spr_door_opening;
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5FAACD80
/// @DnDArgument : "code" "if(global.has_key == 0 && sprite_index == spr_door){$(13_10)	instance_create_depth(x, y, -1, obj_hint);$(13_10)	obj_hint.hint_text = "SOMETHING IS MISSING";$(13_10)}"
if(global.has_key == 0 && sprite_index == spr_door){
	instance_create_depth(x, y, -1, obj_hint);
	obj_hint.hint_text = "SOMETHING IS MISSING";
}