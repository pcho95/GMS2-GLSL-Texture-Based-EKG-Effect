//
// Draw portion of texture if within range of uniform
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

//uniform float u_Y;
uniform float u_X;
const float lean = 0.005;
const float texelX = ( 1.0 / 640.0 );
const float texelY = ( 1.0 / 360.0 );

void main()
{
	//Only manipulate pixels within range of the current uniform X value (u_X)
	if ( !( ( ( u_X*texelX ) > (v_vTexcoord.x-lean) ) && ( ( u_X*texelX ) < (v_vTexcoord.x+lean) ) ) ) {
		discard;
	}
	
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, vec2( v_vTexcoord.x, v_vTexcoord.y /*+ (u_Y*texelY)*/ ) );
}
