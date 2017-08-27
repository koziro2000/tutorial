hsp = dir * move_speed;
if (vsp < 10) vsp += grv;

if (place_meeting(x+hsp, y, o_solid_parent))
{
	while(!place_meeting(x+sign(hsp), y, o_solid_parent))
	{
		x += sign(hsp);
	}
	hsp = 0;
	dir *= -1;
	image_xscale = dir;
}


x += hsp;

//Vertical Collision
if (place_meeting(x, y+vsp, o_solid_parent))
{
	while(!place_meeting(x, y+sign(vsp), o_solid_parent))
	{
		y += sign(vsp);
	}
	vsp = 0;
	
	if (fear_heights) && !position_meeting(x + 2 * dir, y + (sprite_height/2) + 16, o_solid_parent)
	{		
		dir *= -1;
		image_xscale = dir;
	}
}

y += vsp;