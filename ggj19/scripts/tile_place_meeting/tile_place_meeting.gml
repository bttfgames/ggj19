/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 373B0D2D
/// @DnDArgument : "code" "var xx = argument0;$(13_10)var yy = argument1;$(13_10)var layer_id = layer_tilemap_get_id(layer_get_id(argument2));$(13_10)$(13_10)//save current position$(13_10)var xp = x;$(13_10)var yp = y;$(13_10)$(13_10)//update position$(13_10)x = xx;$(13_10)y = yy;$(13_10)$(13_10)//check collision$(13_10)var meeting =	tilemap_get_at_pixel(layer_id, bbox_left,	bbox_top)	 ||$(13_10)				tilemap_get_at_pixel(layer_id, bbox_right,	bbox_top)	 ||$(13_10)				tilemap_get_at_pixel(layer_id, bbox_left,	y)			 ||$(13_10)				tilemap_get_at_pixel(layer_id, bbox_right,	y)			 ||$(13_10)				tilemap_get_at_pixel(layer_id, bbox_left,	bbox_bottom) ||$(13_10)				tilemap_get_at_pixel(layer_id, bbox_right,	bbox_bottom) ||$(13_10)				tilemap_get_at_pixel(layer_id, x, y);$(13_10)				$(13_10)x = xp;$(13_10)y = yp;$(13_10)$(13_10)return meeting;"
var xx = argument0;
var yy = argument1;
var layer_id = layer_tilemap_get_id(layer_get_id(argument2));

//save current position
var xp = x;
var yp = y;

//update position
x = xx;
y = yy;

//check collision
var meeting =	tilemap_get_at_pixel(layer_id, bbox_left,	bbox_top)	 ||
				tilemap_get_at_pixel(layer_id, bbox_right,	bbox_top)	 ||
				tilemap_get_at_pixel(layer_id, bbox_left,	y)			 ||
				tilemap_get_at_pixel(layer_id, bbox_right,	y)			 ||
				tilemap_get_at_pixel(layer_id, bbox_left,	bbox_bottom) ||
				tilemap_get_at_pixel(layer_id, bbox_right,	bbox_bottom) ||
				tilemap_get_at_pixel(layer_id, x, y);
				
x = xp;
y = yp;

return meeting;