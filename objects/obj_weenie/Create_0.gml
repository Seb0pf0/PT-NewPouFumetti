scr_initenemy();
destroyable = false;
stunstate = 0;
stuntimer = 0;
stunmax = 100;
hitboxID = -4;
killbyenemy = false;
grav = 0.5;
hsp = 0;
vsp = 0;
state = states.walk;
stunned = 0;
alarm[0] = 150;
roaming = true;
collectdrop = 5;
flying = false;
straightthrow = false;
cigar = false;
cigarcreate = false;
stomped = false;
shot = false;
reset = false;
flash = false;
landspr = spr_sausagemannocigar_land;
idlespr = spr_sausagemannocigar_idle;
fallspr = spr_sausagemannocigar_fall;
stunfallspr = spr_sausagemannocigar_stun;
walkspr = spr_sausagemannocigar_walk;
turnspr = spr_sausagemannocigar_turn;
recoveryspr = spr_sausagemannocigar_recovery;
grabbedspr = spr_sausagemannocigar_grabbed;
scaredspr = spr_sausagemannocigar_hit;
image_xscale = -1;
hp = 1;
slapped = false;
grounded = true;
birdcreated = false;
boundbox = false;
spr_dead = spr_sausagemannocigar_hit;
important = false;
heavy = false;
depth = 0;
paletteselect = 0;
spr_palette = palette_cheeseslime;
sprite_index = walkspr;
grabbedby = 0;
stuntouchbuffer = 0;
scaredbuffer = 0;
