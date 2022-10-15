function map(name_, room_, step_=c_null, draw_=c_null) constructor {
	name = name_;
	maproom = room_;
	step = step_;
	draw = draw_;
	global.maps[room_] = self;
}

global.maps = [];
nu map("Moon Start", moon1);
nu map("Moon Path", moon2);

#macro mp global.maps