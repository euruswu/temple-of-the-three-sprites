extends Agent

func _draw() -> void:
	var points = PackedVector2Array([
		Vector2(0, -30),
		Vector2(-30, 30),
		Vector2(30, 30)
	])

	draw_colored_polygon(
		points,
		Color("#F1D23F")
	)
