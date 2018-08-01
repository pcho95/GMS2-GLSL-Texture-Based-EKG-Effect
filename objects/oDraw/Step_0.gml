/// @description Insert description here
// You can write your code in this editor

//Determine rate per BPM, and increment
bpm += 2.0 * ( keyboard_check(vk_up) - keyboard_check(vk_down) );
bpm = clamp( bpm, 20.0, 220.0 );
var _r = (400/60) * (bpm/60) / 4.0; //we want 4 beats per scan
frame+=_r;
frame%=400;

//u_Y = 64*dsin( (frame/640)*360 ); //sine-wave 

//Increment image index
img += keyboard_check_pressed(vk_space);
img %= sprite_get_number( texWave001 );

//Reset x scan
frame = keyboard_check_pressed(vk_left) ? 0 : frame;