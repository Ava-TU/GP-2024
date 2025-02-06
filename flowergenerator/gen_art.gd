extends Node2D

var radius:float
var count:int

func _draw() -> void:
	
	var l = float(count)
	
	#for i in range(l):
		#draw_line(Vector2(i * 100, 0), Vector2(i * 100, 500), Color.SEA_GREEN, 10)
	
	
	var theta_inc = PI * 2.0 / l
	var px = 0
	var py = 0
	
	for i in range(l):
		var theta = theta_inc * i
		var x = sin(theta) * radius
		var y = cos(theta) * radius
		draw_line(Vector2(px, py), Vector2(x, y), Color.YELLOW, 10)
		draw_circle(Vector2(x, y), 10, Color.CORNSILK, false)
		px = x
		py = y
	
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
