extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("escape"):
		$".".visible = false


func _on_sound_close_pressed():
	$".".visible = false


func _on_graphics_close_pressed():
	$".".visible = false


func _on_gameplay_close_pressed():
	$".".visible = false
