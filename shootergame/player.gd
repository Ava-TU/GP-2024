extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

const TURN_RATE = 180

func _print_stuff():
	DebugDraw2D.set_text("pos", position)
	DebugDraw2D.set_text("rotation", rotation)
	DebugDraw2D.set_text("rotation deg", rad_to_deg(rotation))
	DebugDraw2D.set_text("transform.x", transform.x)
	DebugDraw2D.set_text("transform.y", transform.y)
	DebugDraw2D.set_text("global_transform.x", global_transform.x)
	DebugDraw2D.set_text("global_transform.y", global_transform.y)
	DebugDraw2D.set_text("vel", velocity)
	
func _process(delta: float) -> void:
	_print_stuff()


func _physics_process(delta: float) -> void:
	# Add the gravity.
	#if not is_on_floor():
	#	velocity += get_gravity() * delta

	get_input()
	move_and_slide()
	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
func get_input():
	var input_dir = Input.get_vector("left", "right", "up", "down")
	velocity = input_dir * SPEED
	
