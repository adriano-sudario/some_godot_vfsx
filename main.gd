extends Node3D

var has_pixelate := false
var has_glitch := false
var has_vhs := false

func _process(_delta):
	if Input.is_action_just_pressed("1"):
		has_pixelate = not has_pixelate
		
		if has_pixelate:
			EffectManager.apply_pixelate()
		else:
			EffectManager.remove_pixelate()
	
	if Input.is_action_just_pressed("2"):
		has_glitch = not has_glitch
		
		if has_glitch:
			EffectManager.apply_glitch()
		else:
			EffectManager.remove_glitch()
	
	if Input.is_action_just_pressed("3"):
		has_vhs = not has_vhs
		
		if has_vhs:
			EffectManager.apply_vhs()
		else:
			EffectManager.remove_vhs()
