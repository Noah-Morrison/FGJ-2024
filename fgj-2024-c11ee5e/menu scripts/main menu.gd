extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	$Panel/VBoxContainer/play.grab_focus()
	$settings.visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_quit_pressed():
	get_tree().quit()


func _on_settings_pressed():
	$settings.visible = true


func _on_play_pressed():
	get_tree().change_scene_to_file("res://game scenes and scripts/FloorGrid.tscn")


func _on_play_2_pressed():
	get_tree().change_scene_to_file("res://game scenes and scripts/FloorGrid2Players.tscn")



func _on_credits_pressed():
	get_tree().change_scene_to_file("res://game scenes and scripts/Credits.tscn")
