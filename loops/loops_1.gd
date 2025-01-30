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
	
	#while loop counting backwards
	var count = 10
	
	while(count > 0): 
		print(count)
		count -= 1
		
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
	
	#this draws horizontal lines across the screen
	var num_h_lines = 10
	var gap = 50
	var border = 100
	
	for i in range(num_h_lines):
		draw_line(Vector2(border, border + gap * i),
		Vector2(v.size.x - border, border + gap * i), Color.GREEN_YELLOW)
		
	pass
	
