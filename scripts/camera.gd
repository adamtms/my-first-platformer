extends Camera2D

@onready var camera: Camera2D = $"."

@onready var top_left_boundary: Node2D = $"../../TopLeftBoundary"
@onready var bottom_right_boundary: Node2D = $"../../BottomRightBoundary"

func _ready() -> void:
	camera.limit_bottom = int(bottom_right_boundary.position.y)
	camera.limit_right = int(bottom_right_boundary.position.x)
	camera.limit_top = int(top_left_boundary.position.y)
	camera.limit_left = int(top_left_boundary.position.x)
