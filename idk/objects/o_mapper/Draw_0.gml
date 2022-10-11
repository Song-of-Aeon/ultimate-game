draw_set_color(c_white);
draw_text(10, 10, object_get_name(types[selectedtype]));
var i;
draw_set_alpha(.4);
for (i=-global.tilesize/2; i<room_width; i+=global.tilesize) {
	draw_line(i, 0, i, room_height);
}
for (i=-global.tilesize/2; i<room_height; i+=global.tilesize) {
	draw_line(0, i, room_width, i);
}
switch selectedtype {
	case 0:
		draw_sprite(tl[$datas[selectedtype][selecteddata]].sprite, 0, 20, 40);
		break;
	case 1:
		//log(mp[datas[selectedtype][selecteddata]])
		draw_text(20, 40, mp[datas[selectedtype][selecteddata]].name);
		break;
}
draw_set_alpha(1);