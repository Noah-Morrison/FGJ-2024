extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("escape"):
		$"settings menu".visible = false


func _on_resume_pressed():
	$".".visible = false


func _on_settings_pressed():
	$"settings menu".visible = true


func _on_reset_pressed():
	Global.reset()
	
func _on_return_pressed():
	get_tree().change_scene_to_file("res://menu scenes/main menu.tscn")
	Global.reset()
