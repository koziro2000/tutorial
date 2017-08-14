///outline_object(color, pixel_off, direction);
//Set an outline color
var outline_color = argument0;
var pixel_off = argument1;
var xscale = argument2;

//Draw the sprite 1 pixel off in each direction
draw_sprite_ext(sprite_index, -1, x - pixel_off, y, xscale, 1, 0, outline_color, 1);
draw_sprite_ext(sprite_index, -1, x + pixel_off, y, xscale, 1, 0, outline_color, 1);
draw_sprite_ext(sprite_index, -1, x, y - pixel_off, xscale, 1, 0, outline_color, 1);
draw_sprite_ext(sprite_index, -1, x, y + pixel_off, xscale, 1, 0, outline_color, 1);

//Draw the regular sprite at origin
draw_sprite_ext(sprite_index, -1, x, y, xscale, 1, 0, c_white, 1);