function draw_set_align(argument0, argument1) //gml_Script_draw_set_align
{
    if (argument0 == undefined)
        argument0 = fa_left
    if (argument1 == undefined)
        argument1 = 0
    draw_set_halign(argument0)
    draw_set_valign(argument1)
}

