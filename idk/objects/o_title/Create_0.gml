global.highscore = "NONE";
if file_exists("hi.aeon") {
	var myguy = file_text_open_read("hi.aeon");
	global.highscore = file_text_read_real(myguy);
	file_text_close(myguy);
}