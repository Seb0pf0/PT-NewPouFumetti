if (other.state != (98 << 0) && other.state != (290 << 0))
{
    if (!instance_exists(transfotip))
    {
        if instance_exists(obj_transfotip)
            transfotip = obj_transfotip.id
        else
            transfotip = instance_create(x, y, obj_transfotip)
        with (transfotip)
        {
            other.transfotip = id
            text = (("{s}" + other.msg) + "/")
            alarm[0] = 1
            fadeout_speed = 0.025
            fadeout = 0
        }
    }
    else
        transfotip.alarm[1] = 5
}