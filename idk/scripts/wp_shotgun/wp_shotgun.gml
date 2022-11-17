weapongen({
	step: function(input) {
		if input.hit && ammo {
			ammo--;
			repeat(12) {
				c_shoot(df.x, df.y, 6+random(3), df.dir+irandom(30)-15, bul.thin, c_yellow);
			}
			c_screenbump(7, df.dir);
			with df switch dir {
				case 0:
					spd.h = max(spd.h-2, -7);
					break;
				case 90:
					spd.v = min(spd.v+2, 7);
					break;
				case 180:
					spd.h = min(spd.h+2, 7);
					break;
				default:
					spd.v = max(spd.v-2, -7);
					break;
			}
		}
	},
	name: "shotgun",
	count: 0,
	ammo: 99,
});