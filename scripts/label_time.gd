extends Label

@onready var label: Label = $"."

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	var now = Time.get_unix_time_from_system()
	var time_elapsed = now - GameState.start_time
	label.text = "Time: " + str(floor(time_elapsed))
