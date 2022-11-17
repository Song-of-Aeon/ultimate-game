/// @description Insert description here
// You can write your code in this editor
if(amplitude <= .5){
	instance_destroy();
}
else{
	var camx = camera_get_view_x(view_camera[0]);
	var camy = camera_get_view_y(view_camera[0]);
	var dude = distabs(dir, amplitude);
	amplitude = lerp(amplitude, 0, decay);
	camx = dude.x;
	camy = dude.y;
	camera_set_view_pos(view_camera[0],camx,camy);
}
count++;