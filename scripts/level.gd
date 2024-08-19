extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	GameState.win_level.connect(win)
	GameState.reset_coins()

@onready var background: TileMapLayer = $background

func win():
	print("You won!")
