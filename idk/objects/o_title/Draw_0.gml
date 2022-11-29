draw_clear(c_black);
draw_set_font(ft_couriernew);
draw_set_halign(fa_center);
draw_text(MIDWID, HEIGHT/4, "IDK.YYP");
draw_text(MIDWID, MIDHEI, "> BEGIN <");
draw_text(MIDWID, HEIGHT-32, "HIGH: " + string(global.highscore));
draw_set_halign(fa_left);