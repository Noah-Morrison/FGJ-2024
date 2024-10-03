extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$Control.visible = false
	$"Control/settings menu".visible = false
	$"cheese and shadow".visible = true
	$"player death".visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("escape"):
		$Control.visible = true
	
	if Global.cheese_fallen == true:
		$"cheese and shadow"/cheese.visible = true
		$"cheese and shadow/shadow".visible = false
		
	if Global.player_alive[0] == 0 or Global.player_alive[1] == 0:
		$"player death".visible = true
