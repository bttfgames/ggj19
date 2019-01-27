/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 6AAF1496
/// @DnDArgument : "x" "10"
/// @DnDArgument : "y" "9"
/// @DnDArgument : "sprite" "life_sprite_name"
/// @DnDArgument : "image" "life_sprite_frame"
draw_sprite(life_sprite_name, life_sprite_frame, 10, 9);

/// @DnDAction : YoYo Games.Instance Variables.If_Health
/// @DnDVersion : 1
/// @DnDHash : 7158AA06
/// @DnDApplyTo : 6485ebfb-c30a-4d72-80c0-2665bc23f984
/// @DnDArgument : "op" "2"
with(player) {
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
var l7158AA06_0 = __dnd_health > 0;
}
if(l7158AA06_0)
{
	/// @DnDAction : YoYo Games.Instance Variables.Get_Health
	/// @DnDVersion : 1
	/// @DnDHash : 57ADA551
	/// @DnDApplyTo : 6485ebfb-c30a-4d72-80c0-2665bc23f984
	/// @DnDParent : 7158AA06
	/// @DnDArgument : "var" "h_temp"
	/// @DnDArgument : "var_temp" "1"
	with(player) {
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	var h_temp = __dnd_health;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4EC5E73B
	/// @DnDParent : 7158AA06
	/// @DnDArgument : "var" "is_glow"
	/// @DnDArgument : "value" "1"
	if(is_glow == 1)
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 3A2952D1
		/// @DnDParent : 4EC5E73B
		/// @DnDArgument : "x" "10"
		/// @DnDArgument : "y" "9"
		/// @DnDArgument : "sprite" "spr_hud_life_glow"
		/// @DnDArgument : "image" "life_sprite_frame"
		/// @DnDSaveInfo : "sprite" "47064745-f479-4d6e-a450-64f7e6636295"
		draw_sprite(spr_hud_life_glow, life_sprite_frame, 10, 9);
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 6B804BC1
	/// @DnDParent : 7158AA06
	/// @DnDArgument : "expr" "!is_glow and player.is_pushing and ((current_time - last_timer_glow) > (timer_glow_offset + h_temp))"
	if(!is_glow and player.is_pushing and ((current_time - last_timer_glow) > (timer_glow_offset + h_temp)))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 35E3944E
		/// @DnDParent : 6B804BC1
		/// @DnDArgument : "expr" "current_time"
		/// @DnDArgument : "var" "last_timer_glow"
		last_timer_glow = current_time;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1B3F72E5
		/// @DnDParent : 6B804BC1
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "is_glow"
		is_glow = 1;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 1A643B1B
	/// @DnDParent : 7158AA06
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 75EF1DCF
		/// @DnDParent : 1A643B1B
		/// @DnDArgument : "expr" "is_glow and player.is_pushing and ((current_time - last_timer_glow) > (timer_glow_offset + h_temp))"
		if(is_glow and player.is_pushing and ((current_time - last_timer_glow) > (timer_glow_offset + h_temp)))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5997E242
			/// @DnDParent : 75EF1DCF
			/// @DnDArgument : "expr" "current_time"
			/// @DnDArgument : "var" "last_timer_glow"
			last_timer_glow = current_time;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 28EED3C3
			/// @DnDParent : 75EF1DCF
			/// @DnDArgument : "var" "is_glow"
			is_glow = 0;
		}
	}
}