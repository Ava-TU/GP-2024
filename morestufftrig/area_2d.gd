extends Area2D

#@export var explosion

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	var f:float
	var g:float
	var h:float
	
	f = 10#assignment
	g = 20
	h = 3
	
	f += 2# add 2 to f
	f = f + 2
	g = f - 5
	
	h *= 2#multiple h by 2
	g = h / 3
	
	var i:int
	var j:int
	var k:int
	
	i = 10
	j = 4
	k = i / j
	
	print(i)
	print(j)
	print(k)
	
	print(f)
	print(g)
	print(h)
	
	
	
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	DebugDraw2D.set_text("pos", position)
	DebugDraw2D.set_text("glob_pos", global_position)
	DebugDraw2D.set_text("rotation", rotation)
	DebugDraw2D.set_text("glo_rotation", global_rotation)
	
	rotation += 0.1
	
	position.x += 1
	
	
	
	pass
	
func _on_area_entered(area: Area2D) -> void:
	print("Collided!")
		
	print(area)
	area.queue_free()
	
#	var explosion:Node2D = explosion_scene.instantiate()
#	explosion.global_position = area.global_position
#	explosion.emitting = true
	
	
	
	
	pass # Replace with function body
