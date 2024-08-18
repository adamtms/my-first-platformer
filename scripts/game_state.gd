extends Node

signal win_level

var max_coins = 0
var collected_coins = 0

func add_max_coin():
	max_coins += 1
	
func pick_up_coin():
	collected_coins += 1
	if collected_coins == max_coins:
		win_level.emit()

func reset_coins():
	max_coins = 0
	collected_coins = 0
