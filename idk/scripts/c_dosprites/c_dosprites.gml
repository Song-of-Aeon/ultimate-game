function c_dosprites() {
	if aerial {
		//image_speed = spd.v/2;
		image_speed = 0;
		sprite_index = spd.v ? sprites.fall : sprites.rise;
		if hput != 0 {
			image_xscale = hput;
		}
	} else {
		if hput != 0 {
			image_xscale = hput;
			sprite_index = sprites.walk;
			image_speed = spd.h/1.5;
		} else {
			sprite_index = sprites.idle;
			image_speed = .4;
		}
	}
}