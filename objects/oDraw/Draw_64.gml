/// @description Insert description here
// You can write your code in this editor

//GUI text
draw_set_color(c_fuchsia);
var _y = 0;
var _s = 14;
draw_text( 8, _s*_y++, "press SPACE to change reference texture" );
draw_text( 8, _s*_y++, "press LEFT to reset scan position" );
draw_text( 8, _s*_y++, "press UP/DOWN to change BPM" );
draw_text( 8, _s*_y++, "BPM: " + string(bpm) );
draw_text( 8, _s*_y++, "texture: " + string(img) );
draw_set_color(c_white);