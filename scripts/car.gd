extends Area2D

var direction = Vector2.LEFT
var SPEED = 500
var colors = [
	preload("res://assets/graphics/cars/green.png"),
	preload("res://assets/graphics/cars/red.png"),
	preload("res://assets/graphics/cars/yellow.png")
	]

@onready var sprite_2d: Sprite2D = $Sprite2D

func _ready() -> void:
		$Sprite2D.texture = colors.pick_random()

func _process(delta: float) -> void:
	position += direction * SPEED * delta

func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()
