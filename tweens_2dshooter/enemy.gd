extends Node2D

var tween: Tween

func _ready():
	tween = create_tween()
	tween.set_loops(0)

	

func _draw():
	# Face
	draw_circle(Vector2(0, 0), 40, Color.PAPAYA_WHIP, true, 1, true)
	# Eyes
	draw_circle(Vector2(-20, 0), 10, Color.FIREBRICK, false, 3.6, true)
	draw_circle(Vector2(20, 0), 10, Color.FIREBRICK, false, 3.6, true)
	
