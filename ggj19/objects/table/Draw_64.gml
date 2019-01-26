/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 62915E6F
/// @DnDArgument : "x" "25"
/// @DnDArgument : "y" "10"
/// @DnDArgument : "sprite" "spr_inventory"
/// @DnDSaveInfo : "sprite" "825137d4-7757-43fb-8722-5c412dd3c537"
draw_sprite(spr_inventory, 0, 25, 10);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 38B932C6
/// @DnDArgument : "color" "$FF0A0A0A"
draw_set_colour($FF0A0A0A & $ffffff);
var l38B932C6_0=($FF0A0A0A >> 24);
draw_set_alpha(l38B932C6_0 / $ff);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5EF5B0A8
/// @DnDArgument : "code" "draw_text(100,5, "X:" + string(x))$(13_10)draw_text(200,5, "Y:" + string(y))$(13_10)draw_text(300,5, "P:" + string(pressionado))"
draw_text(100,5, "X:" + string(x))
draw_text(200,5, "Y:" + string(y))
draw_text(300,5, "P:" + string(pressionado))