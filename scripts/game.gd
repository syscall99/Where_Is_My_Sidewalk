extends Node2D

var car_scene: PackedScene = preload("res://scenes/car.tscn")

func _on_finish_line_body_entered(body: CharacterBody2D) -> void:
	if body is CharacterBody2D:
		print("WIN!")

func _on_spawn_car_timer_timeout() -> void:
	var car = car_scene.instantiate() as Area2D
	$YSortedObjects.add_child(car)
	car.connect("body_entered", go_to_title)

	# Randomly choose LEFT or RIGHT
	if randi() % 2 == 0:
		# Spawn from LEFT and move RIGHT
		var spawn_marker = $CarSpawnPosition/SpawnCarLeft.get_children().pick_random() as Marker2D
		car.position = spawn_marker.position
		car.sprite_2d.flip_h = true
		car.direction = Vector2.RIGHT
	else:
		# Spawn from RIGHT and move LEFT
		var spawn_marker = $CarSpawnPosition/SpawnCarRight.get_children().pick_random() as Marker2D
		car.position = spawn_marker.position
		car.sprite_2d.flip_h = false
		car.direction = Vector2.LEFT

func go_to_title(body):
	print(body)
	print(" collided with car object.")
