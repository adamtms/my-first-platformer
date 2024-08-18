extends Label

@onready var label: Label = $"."


func _ready() -> void:
	label.text = "Coins: " + str(GameState.collected_coins) + " / " + str(GameState.max_coins)
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	label.text = "Coins: " + str(GameState.collected_coins) + " / " + str(GameState.max_coins)
