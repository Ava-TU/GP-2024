extends Node2D

@export var move_direction = 1 # 1 for right, -1 for left
@export var move_distance = 15 # how many pixels the enemy will move
@export var time_between_moves = 0.6 # sets how long the enemy waits before moving again

var move_timer = 0
var change_direction = false

func _process(delta):
	move_timer += delta
	if move_timer >= time_between_moves:
		move_timer = 0
		move_grid()

func move_grid():
	if change_direction:
		move_direction *= -1
		position.y += move_distance  # Move down
	else:
		position.x += move_direction * move_distance  # Move sideways



#func _on_right_wall_area_entered(area: Area2D) -> void:
	#if (child_entered_tree):
		#print ("At Right Border!")
		#change_direction = true
	#pass # Replace with function body.


func _on_right_wall_body_entered(body: Node2D) -> void:
	print ("Right Wall Hit!")
	pass # Replace with function body.
