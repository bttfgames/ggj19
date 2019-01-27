/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 305231E9
/// @DnDArgument : "code" "globalvar light;$(13_10)var w = camera_get_view_width(view_camera[0]);$(13_10)var h = camera_get_view_height(view_camera[0]);$(13_10)light = surface_create(w,h);"
globalvar light;
var w = camera_get_view_width(view_camera[0]);
var h = camera_get_view_height(view_camera[0]);
light = surface_create(w,h);