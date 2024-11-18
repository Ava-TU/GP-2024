extends Node2D
var i = 0
func _draw() -> void:
	i = 1
	var r = get_viewport_rect()
	var h = r.size.x / 2
	
	
	var mouse = get_viewport().get_mouse_position()
	print(mouse)
	if mouse.x < h:
		draw_rect(Rect2(0, 0, h, r.size.y), Color.RED, true)
		draw_rect(Rect2(h, 0, h, r.size.y), Color.BLUE, true)
	else:
		draw_rect(Rect2(0, 0, h, r.size.y), Color.BLUE, true)
		draw_rect(Rect2(h, 0, h, r.size.y), Color.RED, true)
		

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	queue_redraw()
	pass
