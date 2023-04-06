var player = other
if (player.key_up2 && player.state == (0 << 0))
{
    player.key_up2 = 0
    instance_create_unique(0, 0, 36)
}
