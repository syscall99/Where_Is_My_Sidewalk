extends CharacterBody2D

const MAP_RECT := Rect2(0, 0, 384, 640)
const SPEED: int = 200

var direction: Vector2 = Vector2.ZERO

func _physics_process(delta: float) -> void:
	direction = Input.get_vector(
		"move_left",
		"move_right",
		"move_up",
		"move_down"
	)

	velocity = direction * SPEED
	
	move_and_slide()
