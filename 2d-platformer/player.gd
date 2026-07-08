extends CharacterBody2D

const SPEED = 150.0
const JUMP_VELOCITY = -280.0

# Reference to your AnimatedSprite2D
@onready var animated_sprite = $AnimatedSprite2D

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	var direction := Input.get_axis("ui_left", "ui_right")
	
	# --- ANIMATION & FLIPPING LOGIC START ---
	if direction != 0:
		animated_sprite.flip_h = (direction < 0)
		
	if not is_on_floor():
		if velocity.y < 0:
			animated_sprite.play("Jump")
			SoundManager.play_sfx("jump")
		else:
			animated_sprite.play("Fall")
	else:
		if direction != 0:
			animated_sprite.play("Run")
		else:
			animated_sprite.play("Idle")
	# --- ANIMATION & FLIPPING LOGIC END ---

	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
