extends Area2D

func _ready() -> void:
	GameState.max_coins += 1

func _on_body_entered(_body: Node2D) -> void:
	GameState.collected_coins += 1
	queue_free()
