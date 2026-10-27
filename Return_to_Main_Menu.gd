extends TextEdit

# Called when the node enters the scene tree for the first time.
func _Return_Main_Menu() -> void:
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")


func _on_gui_input(event: InputEvent) -> void:
	pass # Replace with function body.
