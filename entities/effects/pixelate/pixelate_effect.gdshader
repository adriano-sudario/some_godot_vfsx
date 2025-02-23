shader_type canvas_item;

uniform sampler2D SCREEN_TEXTURE : hint_screen_texture, filter_nearest;
uniform int pixel_size = 8;

void fragment() {
	float x = float(int(FRAGCOORD.x) % pixel_size);
	float y = float(int(FRAGCOORD.y) % pixel_size);

	x = FRAGCOORD.x + floor(float(pixel_size) / 2.0) - x;
	y = FRAGCOORD.y + floor(float(pixel_size) / 2.0) - y;
	ivec2 textureSize2d = textureSize(SCREEN_TEXTURE, 0);
    vec2 screen_size = vec2(float(textureSize2d.x), float(textureSize2d.y));
	COLOR.rgb = texture(SCREEN_TEXTURE, vec2(x, y) / screen_size).rgb;
}