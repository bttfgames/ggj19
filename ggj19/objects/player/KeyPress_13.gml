/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 3AB0A839
/// @DnDArgument : "health" "+10"
/// @DnDArgument : "health_relative" "1"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
__dnd_health += real(+10);

/// @DnDAction : YoYo Games.Instance Variables.Get_Health
/// @DnDVersion : 1
/// @DnDHash : 5F5E5622
/// @DnDArgument : "var" "h_temp"
/// @DnDArgument : "var_temp" "1"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
var h_temp = __dnd_health;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0213F63F
/// @DnDApplyTo : ae6d3c46-2022-49d3-94ff-8e1cdabe5559
/// @DnDArgument : "expr" "floor((100-h_temp)/5)"
/// @DnDArgument : "var" "life_sprite_frame"
with(obj_hud_life) {
life_sprite_frame = floor((100-h_temp)/5);

}