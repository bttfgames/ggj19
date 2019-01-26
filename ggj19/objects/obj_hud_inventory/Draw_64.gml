/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 62915E6F
/// @DnDArgument : "x" "25"
/// @DnDArgument : "y" "10"
/// @DnDArgument : "sprite" "spr_inventory"
/// @DnDSaveInfo : "sprite" "825137d4-7757-43fb-8722-5c412dd3c537"
draw_sprite(spr_inventory, 0, 25, 10);

/// @DnDAction : YoYo Games.Instance Variables.Get_Health
/// @DnDVersion : 1
/// @DnDHash : 41F0831B
/// @DnDApplyTo : 6485ebfb-c30a-4d72-80c0-2665bc23f984
/// @DnDArgument : "var" "health_now"
/// @DnDArgument : "var_temp" "1"
with(player) {
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
var health_now = __dnd_health;
}

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 09F30F4D
/// @DnDDisabled : 1
/// @DnDArgument : "x" "10"
/// @DnDArgument : "y" "80"
/// @DnDArgument : "var" "health_now"