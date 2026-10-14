class_name Agent
extends Node2D

var speed: float = 60.0
var target_position: Vector2

func _ready() -> void:
	print(name, " is awake!")
	choose_new_target()

func _process(delta: float) -> void:
	position = position.move_toward(
		target_position,
		speed * delta
	)

	if position == target_position:
		choose_new_target()

func choose_new_target() -> void:
	var screen_size = get_viewport_rect().size

	target_position = Vector2(
		randf_range(40.0, screen_size.x - 40.0),
		randf_range(40.0, screen_size.y - 40.0)
	)

	print(name, " new target: ", target_position)
