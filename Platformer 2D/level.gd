extends Node2D

@export var level_num = 0

func _ready():
	$HUD.gems()
	$HUD.level(level_num)
	for gem in $Gems.get_children():
		gem.gem_collected.connect(_on_gem_collected)
	if level_num == 1:
		$Music.play()
	
func _on_door_body_entered(body):
	if body == $Player:
		get_tree().change_scene_to_file(
			"res://level_" + str(level_num - 1) + ".tscn")
			
func _on_up_door_body_entered(body):
	if body == $Player:
		get_tree().change_scene_to_file(
			"res://level_" + str(level_num + 1) + ".tscn")

func _on_gem_collected():
	$HUD.gems()

func _input(event):
	if event.is_action_pressed("reset_level"):
		get_tree().reload_current_scene.call_deferred()
		Global.gems_collected = 0
		$HUD.gems()
		
