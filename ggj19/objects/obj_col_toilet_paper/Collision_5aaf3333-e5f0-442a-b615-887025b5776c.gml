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
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "toilet_frame"
	with(obj_inv_toilet_paper) {
	toilet_frame = 1;
	
	}

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 41933D1A
	/// @DnDParent : 3498AC42
	/// @DnDArgument : "value" "1"
	/// @DnDArgument : "var" "has_toilet_paper"
	global.has_toilet_paper = 1;

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 03741B05
	/// @DnDParent : 3498AC42
	/// @DnDArgument : "soundid" "sound_grab"
	/// @DnDSaveInfo : "soundid" "632ed161-bda8-4d16-811d-8e937ca0949c"
	audio_play_sound(sound_grab, 0, 0);
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 05F348D7
/// @DnDArgument : "code" "instance_create_depth(x, y, -1, obj_hint);$(13_10)obj_hint.hint_text = "PRESS SPACE TO COLLECT";"
instance_create_depth(x, y, -1, obj_hint);
obj_hint.hint_text = "PRESS SPACE TO COLLECT";