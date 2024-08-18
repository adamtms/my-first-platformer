extends Area2D

func _ready() -> void:
	GameState.add_max_coin()

func _on_body_entered(_body: Node2D) -> void:
	GameState.pick_up_coin()
	queue_free()
