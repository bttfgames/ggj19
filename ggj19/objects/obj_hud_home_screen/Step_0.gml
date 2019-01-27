/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5798981C
/// @DnDArgument : "var" "menu_in"
/// @DnDArgument : "value" "1"
if(menu_in == 1)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 62E95E17
	/// @DnDParent : 5798981C
	/// @DnDArgument : "expr" "image_index >= 16"
	if(image_index >= 16)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 63469FCC
		/// @DnDInput : 2
		/// @DnDParent : 62E95E17
		/// @DnDArgument : "expr_1" "1"
		/// @DnDArgument : "var" "menu_in"
		/// @DnDArgument : "var_1" "menu_main"
		menu_in = 0;
		menu_main = 1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2F6C07CB
		/// @DnDParent : 62E95E17
		/// @DnDArgument : "expr" "spr_home_screen_main"
		/// @DnDArgument : "var" "sprite_index"
		sprite_index = spr_home_screen_main;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2655DC8B
		/// @DnDApplyTo : 2e79f66f-b469-4494-a60b-823215c17823
		/// @DnDParent : 62E95E17
		/// @DnDArgument : "expr" "spr_logo_idle"
		/// @DnDArgument : "var" "sprite_index"
		with(obj_hud_logo) {
		sprite_index = spr_logo_idle;
		
		}
	}
}