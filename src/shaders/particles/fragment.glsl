varying vec3 vColor;

void main()
{
    vec2 uv = gl_PointCoord;
    // to calculate the distance from the center of the particle
    // we can either use distance() or length()
    // float distanceToCenter = distance(uv, vec2(0.5));
    float distanceToCenter = length(uv - 0.5);
    float alpha = 0.05 / distanceToCenter - (0.05 * 2.0);

    gl_FragColor = vec4(vColor, alpha);
    #include <tonemapping_fragment>
    #include <colorspace_fragment>
}