extends Node2D

@export var speed = 300
var timer = null
var movement_delay = 0.35
var can_move = true

var actions = ["move_up", "move_down", "move_left", "move_right"]

# Called when the node enters the scene tree for the first time.
func _ready():
	timer = Timer.new()
	timer.set_one_shot(true)
	timer.set_wait_time(movement_delay)
	timer.connect("timeout", Callable(self, "on_timeout_complete"))
	add_child(timer)
	
func on_timeout_complete():
	can_move = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _commit_action(action):
	var commit = false
	if action == "move_up":
		if position.y < 100:
			pass
		else:
			position.y -= 105
			rotation = 0
			commit = true
	elif action == "move_down":
		if position.y > 400:
			pass
		else:
			position.y += 105
			rotation = 3.2
			commit = true
	elif action == "move_left":
		if position.x < 100:
			pass
		else:
			position.x -= 105
			rotation = 4.7
			commit = true
	elif action == "move_right":
		if position.x > 400:
			pass
		else:
			position.x += 105
			rotation = 1.5
			commit = true
			
	if commit:
		can_move = false
		timer.start()
		Global.move_counter += 1

# Function to handle player inputs
func _input(event):
	# Check to see if player has any moves left	
	if Global.move_counter >= Global.total_moves:
		pass
	else:
	# Loop through to see if the player has inputted any valid actions
		for action in actions:
			if Input.is_action_pressed(action) && can_move:
				_commit_action(action)
	
	# Conditions to prevent conditious movement from a button being held down
	for action in actions:
		if event.is_action_released(action):
			can_move = true
			break
	
	
