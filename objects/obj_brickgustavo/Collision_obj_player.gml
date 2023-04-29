with (other)
{
	if (key_up2)
	{
		if (state == states.normal)
		{
			state = states.ratmount;
			instance_create(x,y, obj_brickcomeback)
			}
		else if (state == states.ratmount)
			state = states.normal;
	}
}
