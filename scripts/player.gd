extends Node2D

const MAP_RECT := Rect2(0, 0, 384, 640)
const SPEED: int = 200
const PLAYER_HALF_WIDTH := 6.0
const PLAYER_HALF_HEIGHT := 7.0

var direction: Vector2 = Vector2.ZERO

func _physics_process(delta: float) -> void:
	direction = Input.get_vector(
		"move_left",
		"move_right",
		"move_up",
		"move_down"
	)

	position += direction * SPEED * delta

	position.x = clamp(
		position.x,
		MAP_RECT.position.x + PLAYER_HALF_WIDTH,
		MAP_RECT.end.x - PLAYER_HALF_WIDTH
	)

	position.y = clamp(
		position.y,
		MAP_RECT.position.y + PLAYER_HALF_HEIGHT,
		MAP_RECT.end.y - PLAYER_HALF_HEIGHT
	)
