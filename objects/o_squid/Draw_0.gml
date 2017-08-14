//Set an outline color
var outline_color = c_navy;
var pixel_off = 2;
//Draw the sprite 1 pixel off in each direction
draw_sprite_ext(sprite_index, -1, x - pixel_off, y, dir, 1, 0, outline_color, 1);
draw_sprite_ext(sprite_index, -1, x + pixel_off, y, dir, 1, 0, outline_color, 1);
draw_sprite_ext(sprite_index, -1, x, y - pixel_off, dir, 1, 0, outline_color, 1);
draw_sprite_ext(sprite_index, -1, x, y + pixel_off, dir, 1, 0, outline_color, 1);

//Draw the regular sprite at origin
draw_sprite_ext(sprite_index, -1, x, y, dir, 1, 0, c_white, 1);