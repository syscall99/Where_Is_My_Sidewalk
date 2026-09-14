extends CharacterBody2D

const MAP_RECT := Rect2(0, 0, 384, 640)
const SPEED: int = 100

var direction: Vector2 = Vector2.ZERO

func _physics_process(_delta: float) -> void:
	direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")

	velocity = direction * SPEED
	animate()
	move_and_slide()

# Play Animation
func animate():
	if direction:
		if direction.x != 0:
			if direction.x > 0:
				$AnimatedSprite2D.flip_h = true
			else:
				$AnimatedSprite2D.flip_h = false
			$AnimatedSprite2D.play("horizontal")
		else:
			if direction.y < 0:
				$AnimatedSprite2D.play("up")
			if direction.y > 0:
				$AnimatedSprite2D.play("down")
	else:
		$AnimatedSprite2D.frame = 0
