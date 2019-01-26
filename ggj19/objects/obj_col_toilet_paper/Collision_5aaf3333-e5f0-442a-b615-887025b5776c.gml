/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3498AC42
/// @DnDArgument : "expr" "keyboard_check_pressed(vk_space)"
if(keyboard_check_pressed(vk_space))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 530127E0
	/// @DnDParent : 3498AC42
	instance_destroy();

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 449C5F6B
	/// @DnDApplyTo : 1f18a24f-ea33-4a23-bb8b-53dab458d669
	/// @DnDParent : 3498AC42
	/// @DnDArgument : "expr" "2"
	/// @DnDArgument : "var" "toilet_frame"
	with(obj_inv_toilet_paper) {
	toilet_frame = 2;
	
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5DF51D1D
	/// @DnDParent : 3498AC42
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "has_toilet_paper"
	has_toilet_paper = 1;
}