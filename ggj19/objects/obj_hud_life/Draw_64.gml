/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 6AAF1496
/// @DnDArgument : "x" "10"
/// @DnDArgument : "y" "9"
/// @DnDArgument : "sprite" "shit_sprite"
draw_sprite(shit_sprite, 0, 10, 9);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 77517CB5
/// @DnDArgument : "x" "1"
/// @DnDArgument : "y" "1"
/// @DnDArgument : "caption" ""current: ""
/// @DnDArgument : "var" "last_timer_life"
draw_text(1, 1, string("current: ") + string(last_timer_life));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 1DA67967
/// @DnDArgument : "x" "1"
/// @DnDArgument : "y" "20"
/// @DnDArgument : "caption" ""Delta: ""
/// @DnDArgument : "var" "current_time - last_timer_life"
draw_text(1, 20, string("Delta: ") + string(current_time - last_timer_life));