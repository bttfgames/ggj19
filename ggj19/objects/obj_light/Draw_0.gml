/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 125F8169
/// @DnDArgument : "code" "gpu_set_blendmode(bm_subtract);$(13_10)xx = camera_get_view_x(view_camera[0]);$(13_10)yy = camera_get_view_y(view_camera[0]);$(13_10)draw_surface(light, xx,yy);$(13_10)gpu_set_blendmode(bm_normal);"
gpu_set_blendmode(bm_subtract);
xx = camera_get_view_x(view_camera[0]);
yy = camera_get_view_y(view_camera[0]);
draw_surface(light, xx,yy);
gpu_set_blendmode(bm_normal);