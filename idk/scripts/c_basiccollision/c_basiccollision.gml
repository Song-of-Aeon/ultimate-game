function c_basiccollision() {
	if place_meeting(x + spd.h, y, o_solid) {
	    var i = 0;
	    while !place_meeting(x + sign(spd.h), y, o_solid) {
	        x += sign(spd.h);
	        i++;
	        if i > sprite_width {
	            break;
	        }
	    }
	    spd.h = 0;
	}

	if place_meeting(x, y + spd.v, o_solid) {
	    while !place_meeting(x, y + sign(spd.v), o_solid) {
	        y += sign(spd.v);
	    }
	    spd.v = 0;
	}
	
}