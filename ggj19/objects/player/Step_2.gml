/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4BF24D4E
/// @DnDArgument : "code" "if (variable_global_exists("light")) {$(13_10)   size = 64;$(13_10)   var xx = camera_get_view_x(view_camera[0]);$(13_10)   var yy = camera_get_view_y(view_camera[0]);$(13_10)   gpu_set_blendmode(bm_subtract);$(13_10)   surface_set_target(light);$(13_10)   draw_ellipse_color(x-size/2-xx,y-size/2-yy,x+size/2-xx, y+size/2-yy, c_ltgray, c_black, false);$(13_10)   surface_reset_target();$(13_10)   gpu_set_blendmode(bm_normal);$(13_10)}"
if (variable_global_exists("light")) {
   size = 64;
   var xx = camera_get_view_x(view_camera[0]);
   var yy = camera_get_view_y(view_camera[0]);
   gpu_set_blendmode(bm_subtract);
   surface_set_target(light);
   draw_ellipse_color(x-size/2-xx,y-size/2-yy,x+size/2-xx, y+size/2-yy, c_ltgray, c_black, false);
   surface_reset_target();
   gpu_set_blendmode(bm_normal);
}