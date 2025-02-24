extends Node2D

var tween: Tween

func _draw():
	# Face
	draw_circle(Vector2(0, 0), 40, Color.PAPAYA_WHIP, true, 1, true)
	# Eyebrows
	draw_line(Vector2(-24, -25), Vector2(-5, -10), Color.SADDLE_BROWN, 2, true)
	draw_line(Vector2(24, -25), Vector2(5, -10), Color.SADDLE_BROWN, 2, true)
	# Eyes
	draw_circle(Vector2(-20, 0), 10, Color.FIREBRICK, false, 3.6, true)
	draw_circle(Vector2(20, 0), 10, Color.FIREBRICK, false, 3.6, true)
	# Mouth
	draw_line(Vector2(-20,28), Vector2(0, 15), Color.MEDIUM_PURPLE, 2, true)
	draw_line(Vector2(0, 15), Vector2(20, 28), Color.MEDIUM_PURPLE, 2, true)
	
func _ready() -> void:
	tween = create_tween()
	tween.set_loops(0) # Infinte Loops
	
	tween.tween_property(self, "position", position + Vector2(200, 0), 1.0)
	tween.tween_property(self, "position", position + Vector2(200, 200), 1.0)
	tween.tween_property(self, "position", position + Vector2(10, -20), 1.0)
	tween.tween_property(self, "position", position + Vector2(-30, -150), 1.0)
	tween.tween_property(self, "position", position + Vector2(-60, 200), 1.0)
	
