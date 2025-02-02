extends Node2D

func _draw():
	var center = get_viewport_rect().size / 2
	var max_radius = min(center.x, center.y)
	var radius_step = 10

	for radius in range(0, max_radius, radius_step):
		draw_circle(center, radius, Color(randf(), randf(), randf()))
