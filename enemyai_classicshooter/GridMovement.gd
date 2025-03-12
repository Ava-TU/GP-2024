extends Node2D

@export var move_direction = 1 # 1 for right, -1 for left
@export var move_speed = 10 # how many pixels the enemy will move
@export var time_between_moves = 1.0 # sets how long the enemy waits before moving again

var move_timer = 0

func _process(delta):
	move_timer += delta
	if move_timer >= time_between_moves:
		move_timer = 0
		move_grid()

func move_grid():
	var change_direction = false
	
	
