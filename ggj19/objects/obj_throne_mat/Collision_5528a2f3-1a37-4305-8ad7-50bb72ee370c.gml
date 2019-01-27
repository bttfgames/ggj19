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

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 4799AFC3
	/// @DnDParent : 15688C8E
	/// @DnDArgument : "soundid" "sound_holy"
	/// @DnDSaveInfo : "soundid" "a03fb750-efda-4a87-93f7-be13149cfb2f"
	audio_play_sound(sound_holy, 0, 0);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2269DE47
	/// @DnDParent : 15688C8E
	/// @DnDArgument : "expr" "current_time"
	/// @DnDArgument : "var" "time_win"
	time_win = current_time;
}