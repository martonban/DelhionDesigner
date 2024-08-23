vec3 sdfCircle( vec2 uv, float r)
{
    float x = uv.x;
    float y = uv.y;
    
    float d = length(vec2(x, y)) - r;
    
    return d > 0. ? vec3(1.) : vec3(0., 0., 1.);
}


void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
    vec2 uv = fragCoord/iResolution.xy;
    uv -= .5;
    uv.x *= iResolution.x/iResolution.y;

    vec3 col = sdfCircle(uv, .2);

    fragColor = vec4(col,1.0);
}