extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

@export var move_distance = 25
@export var move_direction = 1  # 1 for right, -1 for left
@export var time_between_moves = 0.5

var move_timer = 0

var should_change_direction = false

func _process(delta):
	move_timer += delta
	if move_timer >= time_between_moves:
		move_timer = 0
		move_grid()

func move_grid():
	# Check if any child is at screen edge
	if should_change_direction:
		print("Wall Hit!")
		move_direction *= -1
		position.y += move_distance  # Move down
		should_change_direction = false
	else:
		position.x += move_direction * move_distance  # Move sideways


func _physics_process(delta: float) -> void:
	# Handle jump.
	if Input.is_action_just_pressed("ui_accept"):
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()


func _on_area_2d_body_entered(body):
	print("Entered!")
	should_change_direction = true
	pass # Replace with function body.


func _on_left_wall_body_entered(body: Node2D) -> void:
	print("Entered!")
	should_change_direction = true
	pass # Replace with function body.
