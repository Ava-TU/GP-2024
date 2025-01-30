extends Node2D


func _ready() -> void:
	pass
	
func _process(delta: float) -> void:
	pass
	
	
#draws shapes using vectors
func _draw() -> void:
	var r = Rect2(10, 10, 100, 30)
	draw_rect(r, Color.SKY_BLUE, false, 5)
	
	draw_line(Vector2(50, 50), Vector2(200, 200), Color.BISQUE)
	
	draw_circle(Vector2(500, 500), 100, Color.AQUAMARINE, true)
	
	var v = get_viewport_rect()
	
	draw_line(Vector2(0, v.size.y), Vector2(v.size.x, 0), Color.PALE_VIOLET_RED)
	
	#for loop counting up
	for i in range(10):
		print(i)
	
	#for loop counting backwards
	for i in range(10, -1, -1):
		print(i)
		
	var basket = ["apple", "banana", "carrot"]
	
	#prints all the strings in the array
	for f in basket:
		print(f)
		
	#another way of printing a list
	for i in range(basket.size()):
		print(basket[i])
		
	var num_lines = 10
	var s = get_viewport_rect().size
	var w = s.x / num_lines
	
	for i in range(num_lines):
		draw_line(Vector2(i * w, 0), Vector2(i * w, s.y), Color.BLUE_VIOLET)
	
	pass
	
