function txt_test() { //dont forget to rename scripts when you copy them
	
	msg = msglang([ //mglang exists so you can have alternate versions of dialogue per language (or for other variations)
	
	txt("it's a beautiful day outside.", SANS.NOTHING),
	txt("birds are singing, flowers are blooming...", SANS.NOTHING),
	txt("on days like these, kids like you...", SANS.NOTHING),
	txt("...Should probably change the default textscript.", SANS.NOTHING),
	
	],[
	
	txt(""),
	
	])
	
	endevent = c_null;
}