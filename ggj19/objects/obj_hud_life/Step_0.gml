/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 488007C4
/// @DnDArgument : "expr" "current_time - last_timer_life"
/// @DnDArgument : "var" "life_delta_time"
life_delta_time = current_time - last_timer_life;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 379B0214
/// @DnDArgument : "var" "life_delta_time"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "timer_life_offset"
if(life_delta_time >= timer_life_offset)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5E2B891E
	/// @DnDParent : 379B0214
	/// @DnDArgument : "expr" "current_time"
	/// @DnDArgument : "var" "last_timer_life"
	last_timer_life = current_time;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4AA8DF5E
	/// @DnDParent : 379B0214
	/// @DnDArgument : "expr" "+1"
	/// @DnDArgument : "var" "life_count"
	life_count = +1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 14F444FA
	/// @DnDParent : 379B0214
	/// @DnDArgument : "expr" "spr_hud_life_002"
	/// @DnDArgument : "var" "shit_sprite"
	shit_sprite = spr_hud_life_002;
}