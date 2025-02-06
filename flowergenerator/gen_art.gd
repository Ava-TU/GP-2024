extends Node2D

var radius:float
var count:int

func _draw() -> void:
	
	var l = float(count)
	
	for i in range(l):
		draw_line(Vector2(i * 100, 0), Vector2(i * 100, 500), Color.SEA_GREEN, 10)
	
	
	var theta_inc = PI * 2.0 / l
	for i in range(l):
		var theta = theta_inc * i
		var x = sin(theta) * radius
		var y = cos(theta) * radius
		draw_circle(Vector2(x, y), radius, Color.CORNSILK, false)
	
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	queue_redraw()
	pass


func _on_radius_value_changed(value: float) -> void:
	radius = value
	pass # Replace with function body.


func _on_num_lines_value_changed(value: float) -> void:
	count = value
	pass # Replace with function body.
