class_name VhsEffect
extends Node

@onready var color_rect:ColorRect = $ColorRect

@export_range(0.0, 0.1, 0.005) var glitch_range := 0.05:
	set(value):
		glitch_range = value
		await self.ready
		color_rect.material.set_shader_parameter("range", glitch_range)

@export_range(0.0, 300.0, 0.1) var noise_quality := 250.0:
	set(value):
		noise_quality = value
		await self.ready
		color_rect.material.set_shader_parameter("noiseQuality", noise_quality)

@export_range(-0.6, 0.6, 0.0010) var noise_intensity := 0.0088:
	set(value):
		noise_intensity = value
		await self.ready
		color_rect.material.set_shader_parameter("noiseIntensity", noise_intensity)

@export_range(-0.1, 0.1, 0.001) var offset_intensity := 0.03:
	set(value):
		offset_intensity = value
		await self.ready
		color_rect.material.set_shader_parameter("offsetIntensity", offset_intensity)

@export_range(-0.1, 0.1, 0.001) var color_offset_intensity := 0.03:
	set(value):
		color_offset_intensity = value
		await self.ready
		color_rect.material.set_shader_parameter("colorOffsetIntensity", color_offset_intensity)
