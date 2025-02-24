extends Node2D

var tween: Tween

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
	tween = create_tween()
	tween.set_loops(0) # Infinite Loops
	
	
