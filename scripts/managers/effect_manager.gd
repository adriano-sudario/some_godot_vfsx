extends Node

enum PIXELATE_PIXEL_SIZE { TWO = 2, FOUR = 4, EIGHT = 8, SIXTEEN = 16 }

var pixelate_effect:PixelateEffect
var glitch_effect:GlitchEffect
var vhs_effect:VhsEffect

func apply_pixelate(pixel_size := PIXELATE_PIXEL_SIZE.TWO) -> PixelateEffect:
	pixelate_effect = preload("res://entities/effects/pixelate/pixelate_effect.tscn").instantiate()
	pixelate_effect.pixel_size = pixel_size
	get_tree().root.add_child.call_deferred(pixelate_effect)
	return pixelate_effect

func remove_pixelate():
	pixelate_effect.queue_free()
	pixelate_effect = null
	
func apply_glitch() -> GlitchEffect:
	glitch_effect = preload("res://entities/effects/glitch/glitch_effect.tscn").instantiate()
	get_tree().root.add_child.call_deferred(glitch_effect)
	return glitch_effect

func remove_glitch():
	if glitch_effect:
		glitch_effect.queue_free()
		glitch_effect = null
	
func apply_vhs() -> VhsEffect:
	vhs_effect = preload("res://entities/effects/vhs/vhs_effect.tscn").instantiate()
	get_tree().root.add_child.call_deferred(vhs_effect)
	return vhs_effect

func remove_vhs():
	if vhs_effect:
		vhs_effect.queue_free()
		vhs_effect = null
