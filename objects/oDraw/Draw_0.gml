/// @description Insert description here
// You can write your code in this editor
/*
if (!surface_exists( surfLine ) ) {
	surfLine = surface_create( 640, 360 );
}
*/

//Restore surface if it has been cleared from memory
if (!surface_exists( surfRender ) ) {
	surfRender = surface_create( 640, 360 );
}

/*
surface_set_target( surfLine );
	draw_clear_alpha(c_black,1.0);
	draw_line_shake( 180, 256, c_white );
surface_reset_target();
*/

surface_set_target( surfRender );

	//Slowly fade the surface to black
	draw_set_alpha(0.015);
	draw_set_color(c_black);
	draw_rectangle( 0, 0, 640, 360, 0 );

	//Reset draw values
	draw_set_alpha(1.0);
	draw_set_color(c_white);

	//Apply shader to provided image
	shader_set( shEKG );

		//shader_set_uniform_f( shader_get_uniform( shEKG, "u_Y"), 0 ); //no longer necessary
		shader_set_uniform_f( shader_get_uniform( shEKG, "u_X"), frame );
	
		draw_sprite(texWave001,img,0,0); //if we're drawing from a texture
		//draw_surface( surfLine, 0, 0 ); //if we're drawing from a function
	
	shader_reset();

surface_reset_target();

//Apply displace/noise shader to the finalized texture
shader_set(shNoise);

	shader_set_uniform_f( shader_get_uniform( shNoise, "u_Random" ), random(2) - random(2), random(2) - random(2) );

	draw_surface( surfRender, 0, 0 );
	
shader_reset()