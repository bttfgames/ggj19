/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 15688C8E
/// @DnDInput : 2
/// @DnDArgument : "expr" "global.has_toilet_paper == 1"
/// @DnDArgument : "expr_1" "time_win == 0"
if(global.has_toilet_paper == 1 && time_win == 0)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 6253788B
	/// @DnDParent : 15688C8E
	/// @DnDArgument : "soundid" "sound_win"
	/// @DnDSaveInfo : "soundid" "ad6c126f-a981-40da-83d6-e6296fd1db28"
	audio_play_sound(sound_win, 0, 0);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2269DE47
	/// @DnDParent : 15688C8E
	/// @DnDArgument : "expr" "current_time"
	/// @DnDArgument : "var" "time_win"
	time_win = current_time;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2B61685B
	/// @DnDParent : 15688C8E
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "player.did_win"
	player.did_win = 1;

	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 30D736FB
	/// @DnDDisabled : 1
	/// @DnDApplyTo : other
	/// @DnDParent : 15688C8E
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 45E7BFC3
	/// @DnDDisabled : 1
	/// @DnDParent : 30D736FB
	/// @DnDArgument : "x" "obj_throne_mat.x"
	/// @DnDArgument : "y" "y"
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 206827A5
/// @DnDArgument : "code" "if(player.did_win != 1){$(13_10)	instance_create_depth(x, y, -1, obj_hint);$(13_10)	obj_hint.hint_text = "SOMETHING IS MISSING";$(13_10)}"
if(player.did_win != 1){
	instance_create_depth(x, y, -1, obj_hint);
	obj_hint.hint_text = "SOMETHING IS MISSING";
}