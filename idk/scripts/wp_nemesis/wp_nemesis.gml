weapongen({
	step: function(input) {
		if input.hit {
			c_shoot(df.x, df.y, 9, df.dir, bul.big, c_blue, function() {
				c
				color = make_color_hsv((count*21)%255, 255, 255);
				if count >= 14 instance_destroy();
			});
		}
	},
	name: "nemesis",
});