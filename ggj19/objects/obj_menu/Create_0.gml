/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 345A37E4
/// @DnDArgument : "code" "//menu options array$(13_10)menu[0] = "NEW GAME";$(13_10)menu[1] = "ABOUT";$(13_10)menu[2] = "QUIT"; $(13_10)$(13_10)// menu position vars$(13_10)space = 48;$(13_10)pos = 0;$(13_10)v_offset = 72;$(13_10)text_shadow_offset = 2;"
//menu options array
menu[0] = "NEW GAME";
menu[1] = "ABOUT";
menu[2] = "QUIT"; 

// menu position vars
space = 48;
pos = 0;
v_offset = 72;
text_shadow_offset = 2;

/// @DnDAction : YoYo Games.Audio.Stop_All_Audio
/// @DnDVersion : 1
/// @DnDHash : 02DD17B4
audio_stop_all();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 0136CCE2
/// @DnDArgument : "soundid" "sound_menu_music"
/// @DnDArgument : "loop" "1"
/// @DnDSaveInfo : "soundid" "810f247c-80d1-4edd-9f98-bea51a99ade2"
audio_play_sound(sound_menu_music, 0, 1);