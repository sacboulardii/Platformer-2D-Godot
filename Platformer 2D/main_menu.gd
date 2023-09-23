extends Control

func _on_start_button_pressed():
	get_tree().change_scene_to_file("res://level_1.tscn")
	
func _input(event):
	if event.is_action_pressed("start_game"):
		get_tree().change_scene_to_file("res://level_1.tscn")
