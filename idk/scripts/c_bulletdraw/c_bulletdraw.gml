function c_bulletdraw() {
	draw_sprite_ext(sprite_index, image_index, x, y, fxxscale, fxyscale, image_angle, image_blend, image_alpha);
	draw_sprite_ext(colorcover, image_index, x, y, fxxscale, fxyscale, image_angle, color, image_alpha);
}
function c_blackbase() {
	draw_sprite_ext(sprite_index, image_index, x, y, fxxscale, fxyscale, image_angle, c_black, image_alpha);
	draw_sprite_ext(colorcover, image_index, x, y, fxxscale, fxyscale, image_angle, color, image_alpha);
}
function c_flatcolor() {
	draw_sprite_ext(sprite_index, image_index, x, y, fxxscale, fxyscale, image_angle, color, image_alpha);
}
function c_baseless() {
	draw_sprite_ext(colorcover, image_index, x, y, fxxscale, fxyscale, image_angle, color, image_alpha);
}