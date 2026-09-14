extends StaticBody2D

var colors = [
	preload("res://assets/graphics/objects/tree1.png"),
	preload("res://assets/graphics/objects/tree2.png")
	]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Sprite2D.texture = colors.pick_random()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
