/// @DnDAction : YoYo Games.Instance Variables.Get_Health
/// @DnDVersion : 1
/// @DnDHash : 41E90BAD
/// @DnDArgument : "var" "h_temp1"
/// @DnDArgument : "var_temp" "1"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
var h_temp1 = __dnd_health;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 56667ECF
/// @DnDArgument : "expr" "h_temp1 < 20"
if(h_temp1 < 20)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Health
	/// @DnDVersion : 1
	/// @DnDHash : 3AB0A839
	/// @DnDParent : 56667ECF
	/// @DnDArgument : "health" "+1"
	/// @DnDArgument : "health_relative" "1"
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	__dnd_health += real(+1);

	/// @DnDAction : YoYo Games.Instance Variables.Get_Health
	/// @DnDVersion : 1
	/// @DnDHash : 5F5E5622
	/// @DnDParent : 56667ECF
	/// @DnDArgument : "var" "h_temp"
	/// @DnDArgument : "var_temp" "1"
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	var h_temp = __dnd_health;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0213F63F
	/// @DnDApplyTo : ae6d3c46-2022-49d3-94ff-8e1cdabe5559
	/// @DnDParent : 56667ECF
	/// @DnDArgument : "expr" "floor((100-h_temp)/5)"
	/// @DnDArgument : "var" "life_sprite_frame"
	with(obj_hud_life) {
	life_sprite_frame = floor((100-h_temp)/5);
	
	}
}