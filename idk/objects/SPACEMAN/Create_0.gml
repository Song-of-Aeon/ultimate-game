count = 0;
dir = 0;

spd = {
	h: 0,
	v: 0,
	d: 0,
}
espd = {
	h: 0,
	v: 0,
	d: 0,
}
//log(global.weapons)
weapons = [
	wp.shotgun,
]

sprites = {
	idle: s_paceman,
	walk: s_pacemanwalk,
	rise: s_pacemanrise,
	fall: s_pacemanfall,
}

eqwp = 0;

aerial = false;
walkspeed = 1.9;
jumpspeed = 3.2;
grav = .1;
leniance = 0;
lencount = 10;

state = st_standard //not for long
//actionstate = st_7

xdraw = -100;
ydraw = 310;

global.me = id;
#macro df global.me
instance_create(0, 0, o_mapmanager);

global.scores = {
	progression: 0,
	ammo: 0,
	kills: 0,
	time: 10000,
	damage: 10000,
}