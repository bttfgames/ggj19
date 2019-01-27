/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4149F0F7
/// @DnDArgument : "var" "cagou"
cagou = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 02F795EA
/// @DnDArgument : "expr" "spr_hud_life"
/// @DnDArgument : "var" "life_sprite_name"
life_sprite_name = spr_hud_life;

/// @DnDAction : YoYo Games.Instance Variables.Get_Health
/// @DnDVersion : 1
/// @DnDHash : 6259D6C7
/// @DnDApplyTo : 6485ebfb-c30a-4d72-80c0-2665bc23f984
/// @DnDArgument : "var" "h_temp"
/// @DnDArgument : "var_temp" "1"
with(player) {
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
var h_temp = __dnd_health;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 15F9539C
/// @DnDArgument : "expr" "floor((100-h_temp)/5)"
/// @DnDArgument : "var" "life_sprite_frame"
life_sprite_frame = floor((100-h_temp)/5);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 49436457
/// @DnDArgument : "expr" "current_time"
/// @DnDArgument : "var" "last_timer_life"
last_timer_life = current_time;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 772FDDE0
/// @DnDArgument : "expr" "current_time"
/// @DnDArgument : "var" "last_timer_glow"
last_timer_glow = current_time;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2086FEDE
/// @DnDArgument : "expr" "3000"
/// @DnDArgument : "var" "timer_life_offset"
timer_life_offset = 3000;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4A84A612
/// @DnDArgument : "expr" "100"
/// @DnDArgument : "var" "timer_glow_offset"
timer_glow_offset = 100;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1A215B8B
/// @DnDArgument : "var" "is_glow"
is_glow = 0;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6894800B
/// @DnDArgument : "code" "display_set_gui_size(192,108)"
display_set_gui_size(192,108)