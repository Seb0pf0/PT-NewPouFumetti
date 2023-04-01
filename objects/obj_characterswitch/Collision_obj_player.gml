with (other)
{
	if (character == "P")
		character = "N";
	else
		character = "P";
	scr_characterspr();
	instance_destroy(other);
}
