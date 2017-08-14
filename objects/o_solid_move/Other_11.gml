if (!instance_exists(o_player)) exit;
mask_index = s_solid_move;
hsp = dir * move_speed;
if (place_meeting(x+hsp, y, o_solid))
{
	while(!place_meeting(x+sign(hsp), y, o_solid))
	{
		x += sign(hsp);
	}
	hsp = 0;
	dir *= -1;
	image_xscale = dir;
}
x += hsp;

if (place_meeting(x, y-1, o_player))
{
	o_player.hsp_carry = hsp;
}

if (place_meeting(x + (sign(hsp) * sprite_width/2), y, o_player))
{
	o_player.hsp_carry = hsp;
}

if (round(o_player.y + (o_player.sprite_height/2)) > y) || (o_player.key_down) mask_index = -1;
else mask_index = s_solid_move;