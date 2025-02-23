class_name PixelateEffect
extends Node

@onready var color_rect:ColorRect = $ColorRect

@export_enum("2 bits:2", "4 bits:4", "8 bits:8", "16 bits:16") var pixel_size := 8:
	set(value):
		pixel_size = value
		await self.ready
		color_rect.material.set_shader_parameter("pixel_size", pixel_size)
