var move = key_right - key_left;
hsp = move_speed * move;

if (move <> 0)
{
	image_xscale = move;
}

if (vsp < 10) vsp += grv;

if (place_meeting(x, y+1, o_solid_parent))
{
	remaining_jump = max_jumps;
}

if (key_jump) && (remaining_jump > 0)
{
	remaining_jump -= 1;
	vsp = -jump_speed * 0.8;
}

if (key_jump) && (place_meeting(x + sign(hsp), y, o_solid))
{
	vsp = -jump_speed;
}

var hsp_final = hsp + hsp_carry;
hsp_carry = 0;

if (place_meeting(x+hsp_final, y, o_solid_parent))
{
	while(!place_meeting(x+sign(hsp_final), y, o_solid_parent))
	{
		x += sign(hsp_final);
	}
	hsp_final = 0;
}

x += hsp_final;

//Vertical Collision
if (place_meeting(x, y+vsp, o_solid_parent))
{
	while(!place_meeting(x, y+sign(vsp), o_solid_parent))
	{
		y += sign(vsp);
	}
	vsp = 0;
}

y += vsp;