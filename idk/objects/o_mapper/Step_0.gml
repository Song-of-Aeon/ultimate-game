c_input();
selectedtype = mod_negative(selectedtype+down.hit-up.hit, array_length(types));
selecteddata = mod_negative(selecteddata+right.hit-left.hit, array_length(datas[selectedtype]));
if selectedtype != 1 {

	if attack.hold {
		var dude = collision_point(c_tilequantizeval(mouse_x), c_tilequantizeval(mouse_y), types[selectedtype], false, false);
		if dude != noone {
			instance_destroy(dude);
		}
		c_maketile(mouse_x, mouse_y, tl[$datas[selectedtype][selecteddata]]);
	
	}

} else {
	if attack.hit {
		//mydude = instance_create(mouse_x, mouse_y, o_trigger);
		mydude = c_maketrigger(mouse_x, mouse_y, mouse_x, mouse_y);
		mydude.target = mp[datas[selectedtype][selecteddata]];
		c_tilequantize(mydude);
	}
	if attack.hold {
		mydude.x2 = c_tilequantizeval(mouse_x);
		mydude.y2 = c_tilequantizeval(mouse_y);
	}
}


if jump.hold {
	var dude = collision_point(c_tilequantizeval(mouse_x), c_tilequantizeval(mouse_y), types[selectedtype], false, false);
	if dude != noone {
		instance_destroy(dude);
	}
}

if lock.hit {
	c_saveroom("shitter");
	log("did it");
}