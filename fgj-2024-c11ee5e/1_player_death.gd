extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.player_alive[1] == -1:
		$Panel/VBoxContainer/Label.text = "Get Swissed!"
	elif Global.player_alive[0] == 0 and Global.player_alive[1] == 0:
		$Panel/VBoxContainer/Label.text = "Get Swissed!"
	elif Global.player_alive[0] == 2 and Global.player_alive[1] == 0:
		$Panel/VBoxContainer/Label.text = "Larry Wins!"
	elif Global.player_alive[0] == 0 and Global.player_alive[1] == 2:
		$Panel/VBoxContainer/Label.text = "Terry Wins!"


func _on_return_pressed():
	get_tree().change_scene_to_file("res://menu scenes/main menu.tscn")
	Global.reset()


func _on_reset_pressed():
	Global.reset()
