function distabs(dir, distance) {
	var dist = {
		x: (dsin(dir+90)%360)*distance,
		y: (dcos(dir+90)%360)*distance,
	}
	/*var bitch = instance_create(x1, y1, o_null);
	bitch.speed = distance;
	bitch.direction = dir;
	with bitch {
		dir2hv(direction, speed);
		x += spd.h;
		y += spd.v;
	}
	dist.x = bitch.x;
	dist.y = bitch.y;
	instance_destroy(bitch);*/
	//log(distance, spd.h, spd.v);
	//spd.h = 0;
	//spd.v = 0;
	
	
	return dist;
}