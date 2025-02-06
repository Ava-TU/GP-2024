extends Node2D


func _draw() -> void:
	
	var l = $num_Lines.value
	
	for i in range(l):
		draw_line(Vector2(i * 100, 0), Vector2(i * 100, 500), Color.BLUE, 10)
	
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	queue_redraw()
	pass
