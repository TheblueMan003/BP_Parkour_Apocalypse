#version 150

uniform sampler2D DiffuseSampler;

in vec2 texCoord;
in vec2 oneTexel;

uniform vec2 InSize;

uniform vec3 Gray;
uniform vec3 Offset;
uniform vec3 ColorScale;
uniform float Saturation;

out vec4 fragColor;

void main() {

    vec4 InTexel = texture(DiffuseSampler, texCoord);
    vec4 InTexel1 = texture(DiffuseSampler, vec2(texCoord.x-0.01, texCoord.y));
    vec4 InTexel2 = texture(DiffuseSampler, vec2(texCoord.x+0.01, texCoord.y));


    fragColor = vec4(InTexel.r, InTexel1.g, InTexel2.b, 1.0);
}
