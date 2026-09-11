extends Area2D

var direction = Vector2.LEFT
var SPEED = 100

@onready var sprite_2d: Sprite2D = $Sprite2D

func _process(delta: float) -> void:
	position += direction * SPEED * delta

func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()
