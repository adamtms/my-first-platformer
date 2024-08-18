extends Label

@onready var label: Label = $"."

var time_start = 0
var time_now = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	time_start = Time.get_unix_time_from_system()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	time_now = Time.get_unix_time_from_system()
	var time_elapsed = time_now - time_start
	label.text = "Time: " + str(floor(time_elapsed))
