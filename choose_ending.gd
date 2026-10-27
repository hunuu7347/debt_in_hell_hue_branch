extends Node

var player_debt: int = 0
var cruelty: int = 0

func choose_ending() -> void:
	if player_debt > 0:
		get_tree().change_scene_to_file("res://eternal_debt.tscn")

	else: if player_debt == 0 and cruelty < 4:
		get_tree().change_scene_to_file("res://Redemption.tscn")

	else: if player_debt == 0 and cruelty >= 4:
		get_tree().change_scene_to_file("res://The_Devils_Collector.tscn")
