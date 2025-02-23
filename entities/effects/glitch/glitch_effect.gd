class_name GlitchEffect
extends Node

@onready var color_rect:ColorRect = $ColorRect

@export var shake_power := 0.03:
	set(value):
		shake_power = value
		await self.ready
		color_rect.material.set_shader_parameter("shake_power", shake_power)

@export var shake_block_size := 30.5:
	set(value):
		shake_block_size = value
		await self.ready
		color_rect.material.set_shader_parameter("shake_block_size", shake_block_size)

@export_range(0.0, 1.0, 0.001) var fade := 0.03:
	set(value):
		fade = value
		await self.ready
		color_rect.material.set_shader_parameter("fade", fade)

@export var direction_r := Vector2(1.0, 0.0):
	set(value):
		direction_r = value
		await self.ready
		color_rect.material.set_shader_parameter("direction_r", direction_r)

@export var direction_g := Vector2(0.4, 1.0):
	set(value):
		direction_g = value
		await self.ready
		color_rect.material.set_shader_parameter("direction_g", direction_g)

@export var direction_b := Vector2(-0.7, -0.3):
	set(value):
		direction_b = value
		await self.ready
		color_rect.material.set_shader_parameter("direction_b", direction_b)
