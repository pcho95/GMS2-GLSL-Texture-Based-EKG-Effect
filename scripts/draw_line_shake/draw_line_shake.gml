///@description Draws multiple GL lines over the general area that a straight line would occupy, for a scribbly effect
///@param y
///@param segments
///@param color

var _w = 640.0;
draw_set_color( argument2 );
var _yA =  argument0 + random(1) - random(1);
for (var _i=0; _i < argument1; _i++ ) {
	var _s = _i*( 640.0 / argument1 ) - 1;
	var _e = (_i+1)*( 640.0 / argument1 ) - 1;
	
	var _yB = argument0 + random(1) - random(1);
	
	draw_line( _s, _yA, _e, _yB );
	
	_yA = _yB;
}