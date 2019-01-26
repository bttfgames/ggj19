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
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2C9E60A5
	/// @DnDParent : 379B0214
	/// @DnDArgument : "var" "cagou"
	if(cagou == 0)
	{
		/// @DnDAction : YoYo Games.Instance Variables.Set_Health
		/// @DnDVersion : 1
		/// @DnDHash : 50C9F408
		/// @DnDApplyTo : 6485ebfb-c30a-4d72-80c0-2665bc23f984
		/// @DnDParent : 2C9E60A5
		/// @DnDArgument : "health" "-5"
		/// @DnDArgument : "health_relative" "1"
		with(player) {
		if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
		__dnd_health += real(-5);
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5E2B891E
		/// @DnDParent : 2C9E60A5
		/// @DnDArgument : "expr" "current_time"
		/// @DnDArgument : "var" "last_timer_life"
		last_timer_life = current_time;
	
		/// @DnDAction : YoYo Games.Instance Variables.Get_Health
		/// @DnDVersion : 1
		/// @DnDHash : 22B533B5
		/// @DnDApplyTo : 6485ebfb-c30a-4d72-80c0-2665bc23f984
		/// @DnDParent : 2C9E60A5
		/// @DnDArgument : "var" "h_temp"
		/// @DnDArgument : "var_temp" "1"
		with(player) {
		if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
		var h_temp = __dnd_health;
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 14F444FA
		/// @DnDParent : 2C9E60A5
		/// @DnDArgument : "expr" "floor((100-h_temp)/5)"
		/// @DnDArgument : "var" "life_sprite_frame"
		life_sprite_frame = floor((100-h_temp)/5);
	
		/// @DnDAction : YoYo Games.Instance Variables.If_Health
		/// @DnDVersion : 1
		/// @DnDHash : 6BE16FC4
		/// @DnDApplyTo : 6485ebfb-c30a-4d72-80c0-2665bc23f984
		/// @DnDParent : 2C9E60A5
		/// @DnDArgument : "op" "3"
		with(player) {
		if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
		var l6BE16FC4_0 = __dnd_health <= 0;
		}
		if(l6BE16FC4_0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 164ABA76
			/// @DnDParent : 6BE16FC4
			/// @DnDArgument : "expr" "spr_hud_shit"
			/// @DnDArgument : "var" "life_sprite_name"
			life_sprite_name = spr_hud_shit;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3C0A4141
			/// @DnDParent : 6BE16FC4
			/// @DnDArgument : "expr" "80"
			/// @DnDArgument : "var" "timer_life_offset"
			timer_life_offset = 80;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6837E3A9
			/// @DnDParent : 6BE16FC4
			/// @DnDArgument : "var" "life_sprite_frame"
			life_sprite_frame = 0;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 14797A63
			/// @DnDParent : 6BE16FC4
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "cagou"
			cagou = 1;
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 34A972AD
			/// @DnDParent : 6BE16FC4
			/// @DnDArgument : "soundid" "sound_die"
			/// @DnDArgument : "loop" "1"
			/// @DnDSaveInfo : "soundid" "6c02ae53-090f-4cb0-bcf1-6e8560bccd31"
			audio_play_sound(sound_die, 0, 1);
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 46BD1E8A
	/// @DnDParent : 379B0214
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6FB772D4
		/// @DnDParent : 46BD1E8A
		/// @DnDArgument : "var" "life_sprite_frame"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "8"
		if(life_sprite_frame < 8)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 63701DCC
			/// @DnDParent : 6FB772D4
			/// @DnDArgument : "expr" "+1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "life_sprite_frame"
			life_sprite_frame += +1;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7EA18E6D
			/// @DnDParent : 6FB772D4
			/// @DnDArgument : "expr" "current_time"
			/// @DnDArgument : "var" "last_timer_life"
			last_timer_life = current_time;
		}
	}
}