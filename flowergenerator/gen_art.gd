extends Node2D

var radius:float
var count:int
var color_hue_start
var alpha_inc:float=0.0
var hue_inc:float=0.0
var thickness:float = 1

func _draw() -> void:
	
	var l = float(count)
	
	#for i in range(l):
		#draw_line(Vector2(i * 100, 0), Vector2(i * 100, 500), Color.SEA_GREEN, 10)
	
	
	var theta_inc = 1
	var px = 0
	var py = 0
	var r = 0
	var color_hue = color_hue_start
	var alpha = $"../ColorPickerButton".color.a
	for i in range(l):
		var theta = theta_inc * i
		var x = sin(theta) * r
		var y = cos(theta) * r
		var c:Color = Color.from_hsv(color_hue, 1, 1, alpha)
		draw_line(Vector2(px, py), Vector2(x, y), Color.REBECCA_PURPLE, 10)
		draw_circle(Vector2(px, py), 1, c, false, thickness)
		color_hue += hue_inc * 0.01
		px = x
		py = y
		r = r + radius
	
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


func _on_color_picker_button_color_changed(color: Color) -> void:
	color_hue_start = color.h
	pass # Replace with function body.
