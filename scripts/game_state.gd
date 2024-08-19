extends Node

var path = "res://scenes/levels/level_%d.tscn"
var level = 1

var start_time = Time.get_unix_time_from_system()

var max_coins = 0
var collected_coins = 0

func add_max_coin():
	max_coins += 1
	
func pick_up_coin():
	collected_coins += 1
	if collected_coins == max_coins:
		reset_coins()
		level += 1
		var next_level = path % [level]
		if ResourceLoader.exists(next_level):
			get_tree().change_scene_to_file(next_level)


func reset_coins():
	max_coins = 0
	collected_coins = 0
