if (!instance_exists(o_coin))
{
	
	if (image_index >= image_number -1) 
	{
		image_index = image_number -1;	
		image_speed = 0;
	}
	else
	{
		image_speed = 0.2;
	}
}