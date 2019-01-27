/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 45DEC6E0
/// @DnDArgument : "expr" "keyboard_check_pressed(vk_space)"
if(keyboard_check_pressed(vk_space))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5CFBA485
	/// @DnDParent : 45DEC6E0
	instance_destroy();

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6D16FD27
	/// @DnDApplyTo : 1f18a24f-ea33-4a23-bb8b-53dab458d669
	/// @DnDParent : 45DEC6E0
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "key_frame"
	with(obj_inv_toilet_paper) {
	key_frame = 1;
	
	}

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 50F353CE
	/// @DnDParent : 45DEC6E0
	/// @DnDArgument : "value" "1"
	/// @DnDArgument : "var" "has_key"
	global.has_key = 1;

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 6B399F6A
	/// @DnDParent : 45DEC6E0
	/// @DnDArgument : "soundid" "sound_grab"
	/// @DnDSaveInfo : "soundid" "632ed161-bda8-4d16-811d-8e937ca0949c"
	audio_play_sound(sound_grab, 0, 0);
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7603203F
/// @DnDArgument : "code" "instance_create_depth(x, y, -1, obj_hint);$(13_10)obj_hint.hint_text = "PRESS SPACE TO COLLECT";"
instance_create_depth(x, y, -1, obj_hint);
obj_hint.hint_text = "PRESS SPACE TO COLLECT";