/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 6AAF1496
/// @DnDArgument : "x" "10"
/// @DnDArgument : "y" "9"
/// @DnDArgument : "sprite" "life_sprite_name"
/// @DnDArgument : "image" "life_sprite_frame"
draw_sprite(life_sprite_name, life_sprite_frame, 10, 9);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 13F90F6F
/// @DnDArgument : "var" "show_glow"
/// @DnDArgument : "value" "1"
if(show_glow == 1)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 3A2952D1
	/// @DnDParent : 13F90F6F
	/// @DnDArgument : "x" "10"
	/// @DnDArgument : "y" "9"
	/// @DnDArgument : "sprite" "life_sprite_glow_name"
	/// @DnDArgument : "image" "life_sprite_frame"
	draw_sprite(life_sprite_glow_name, life_sprite_frame, 10, 9);
}