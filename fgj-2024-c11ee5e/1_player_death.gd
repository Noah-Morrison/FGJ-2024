extends Control

var looser = ""
var winner = ""
# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Panel/VBoxContainer/Label.text = "Player "+looser+ "died that means Player "+ winner+ "wins"


func _on_return_pressed():
	get_tree().change_scene_to_file("res://menu scenes/main menu.tscn")
