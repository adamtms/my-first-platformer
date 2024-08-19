extends Camera2D

@onready var camera: Camera2D = $"."

@onready var background: TileMapLayer = $"../../background"

func _ready() -> void:
	var scale = background.scale
	var map_limits = background.get_used_rect()
	var map_cellsize = background.tile_set.tile_size
	camera.limit_left = map_limits.position.x * map_cellsize.x * scale.x
	camera.limit_right = map_limits.end.x * map_cellsize.x * scale.x
	camera.limit_top = map_limits.position.y * map_cellsize.y * scale.y
	camera.limit_bottom = map_limits.end.y * map_cellsize.y * scale.y
