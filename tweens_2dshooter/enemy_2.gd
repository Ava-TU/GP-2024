extends Node2D

var tween: Tween

var radius:float = 120
var angle:float = 0.0
var speed:float = 1.5

@export var _X_OFFSET = 150
@export var _Y_OFFSET = 150

func _process(delta):
	circular_motion()
	
func circular_motion():
	angle += speed * get_process_delta_time()
	var x_pos = cos(angle)
	var y_pos = sin(angle)
	
	position.x = radius * x_pos + _X_OFFSET
	position.y = radius * y_pos + _Y_OFFSET

func _draw():
	# Body
	draw_rect(Rect2(0, 40, 45, 60), Color.SKY_BLUE, true, 4, true)
	draw_rect(Rect2(10, 60, 25, 35), Color.REBECCA_PURPLE, true, 2, true)
	# Corner Things
	draw_circle(Vector2(0, 40), 5, Color.YELLOW, true, 3, true)
	draw_circle(Vector2(45.5, 40), 5, Color.YELLOW, true, 3, true)
	draw_circle(Vector2(0, 100), 5, Color.YELLOW, true, 3, true)
	draw_circle(Vector2(45.5, 100), 5, Color.YELLOW, true, 3, true)
	# Hat
	draw_arc(Vector2(26, 35), 5, 30, 90, 4, Color.FOREST_GREEN, 9, true)
	# Eyes
	draw_circle(Vector2(10, 50), 3, Color.MEDIUM_ORCHID, false, 2, true)
	draw_circle(Vector2(35, 50), 3, Color.MEDIUM_ORCHID, false, 2, true)
	
func _ready() -> void:
	var tween = create_tween()
	tween.set_loops(0) # Infinite Loops
	
	tween.tween_property(self, "scale", Vector2(1.2, 1.2), 0.6)
	tween.tween_property(self, "scale", Vector2(1, 1), 0.6)
	tween.set_parallel(true)
	tween.tween_property(self, "position", position + Vector2(100, 20), 2)
	
	
