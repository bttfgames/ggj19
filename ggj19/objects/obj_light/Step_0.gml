/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 629BA69D
/// @DnDArgument : "code" "surface_set_target(light);$(13_10)draw_set_color($ffffe6);$(13_10)$(13_10)var w = camera_get_view_width(view_camera[0]);$(13_10)var h = camera_get_view_height(view_camera[0]);$(13_10)draw_rectangle(0,0, w, h, false);$(13_10)surface_reset_target();"
surface_set_target(light);
draw_set_color($ffffe6);

var w = camera_get_view_width(view_camera[0]);
var h = camera_get_view_height(view_camera[0]);
draw_rectangle(0,0, w, h, false);
surface_reset_target();