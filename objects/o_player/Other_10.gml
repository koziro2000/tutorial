if (key_left || key_right || key_jump)
{
	_state = obj_state._move;
	exit;
}

sprite_index = s_player;
image_speed = 0.7;