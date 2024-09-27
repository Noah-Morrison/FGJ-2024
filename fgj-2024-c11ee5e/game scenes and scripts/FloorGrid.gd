extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$Control.visible = false
	$"Control/settings menu".visible = false
	$TileMap.visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("escape"):
		$Control.visible = true
