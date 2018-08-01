//
// Scatter pixels slightly to introduce a noise effect
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec2 u_Random;

//GLSL ES has no random function, so random value must be passed as a uniform
float rand(vec2 co){
    return fract(sin(dot( u_Random*co ,vec2(12.9898,78.233))) * 43758.5453);
}

void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord + ( vec2(0.005, 0.005)*rand(v_vTexcoord) ) );
}
