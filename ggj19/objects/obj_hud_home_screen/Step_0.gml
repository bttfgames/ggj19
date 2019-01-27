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
	}
}