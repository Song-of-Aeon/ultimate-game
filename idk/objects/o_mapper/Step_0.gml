c_input();

















//selectedtype = mod_negative(selectedtype+down.hit-up.hit, array_length(types));

//selecteddata = mod_negative(selecteddata+right.hit-left.hit, array_length(datas[selectedtype]));
/*selectionzone = mod_negative(selectionzone+down.hit-up.hit, array_length(datas[0][selector[0]]));
selector[selectionzone] = mod_negative(selector[selectionzone]+right.hit-left.hit, array_length(datas[selector[0]]))

switch selector[0] {
	case o_solid:
		//datas[]
}
*/

if !typing {
	switch selectedtype {
		case 0:
			if attack.hold {
				var dude = collision_point(c_tilequantizeval(mouse_x), c_tilequantizeval(mouse_y), o_solid, false, false);
				if dude != noone {
					instance_destroy(dude);
				}
				c_maketile(mouse_x, mouse_y, tl[$datas[selectedtype][selecteddata][selector[selectedtype][selecteddata]]]);
	
			}
			if jump.hold {
				var dude = collision_point(c_tilequantizeval(mouse_x), c_tilequantizeval(mouse_y), o_solid, false, false);
				if dude != noone {
					instance_destroy(dude);
				}
			}
			break;
		case 1:
			if attack.hit {
				//mydude = instance_create(mouse_x, mouse_y, o_trigger);
				mydude = c_maketrigger(mouse_x, mouse_y, mouse_x, mouse_y);
				mydude.target = mp[datas[selectedtype][0][selector[selectedtype][0]]].maproom;
				mydude.targetx = datas[selectedtype][1][selector[selectedtype][1]];
				mydude.targety = datas[selectedtype][2][selector[selectedtype][2]];
				c_tilequantize(mydude, -8, -8);
			}
			if attack.hold {
				mydude.x2 = c_tilequantizeval(mouse_x, -8);
				mydude.y2 = c_tilequantizeval(mouse_y, -8);
			}
			if jump.hold {
				var dude = collision_point(c_tilequantizeval(mouse_x), c_tilequantizeval(mouse_y), o_trigger, false, false);
				if dude != noone {
					instance_destroy(dude);
				}
			}
			break;
	}
	

	/*if lock.hit {
		c_saveroom("shitter");
		log("did it");
	}*/
}



if lock.hit {
	typing = !typing;
}

if typing {
	selectedtype = mod_negative(selectedtype+right.hit-left.hit, array_length(types));
} else {
	selecteddata = mod_negative(selecteddata+down.hit-up.hit, array_length(datas[selectedtype]));
	selector[selectedtype][selecteddata] = mod_negative(
		selector[selectedtype][selecteddata]+(right.hit-left.hit)*(1+shift.hold*4),
		array_length(datas[selectedtype][selecteddata])
	);
}