extends Node2D

@export var speed = 300
var timer = null
var movement_delay = 0.35
var can_move = true

var x_coord = 0
var y_coord = 0
var actions = ["move_up", "move_down", "move_left", "move_right"]
var grid_x = [58, 163, 268, 373, 478]
var grid_y = [62, 167, 272, 377, 482]

var direction = {
	"up" : 0,
	"down" : 3.2,
	"left" : 4.7,
	"right" : 1.5,
}

# Called when the node enters the scene tree for the first time.
func _ready():
	timer = Timer.new()
	timer.set_one_shot(true)
	timer.set_wait_time(movement_delay)
	timer.connect("timeout", Callable(self, "on_timeout_complete"))
	add_child(timer)
	rotation = direction["right"]
	Global.player_dead[0] = 1
	
func on_timeout_complete():
	can_move = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x = grid_x[x_coord]
	position.y = grid_y[y_coord]
	
	# Temporary variable for debugging
	Global.player1_x = x_coord
	Global.player1_y = y_coord
	
	if Global.cheese_fallen and Global.player_dead[0] == 1:
		visible = false
		Global.player_dead[0] = 0
		for i in Global.hole_amount:
			if x_coord == Global.cheese_holes[i][0] and y_coord == Global.cheese_holes[i][1]:
				Global.player_dead[0] = 1
				visible = true
				Global.trigger_reset += 1


	
func commit_action(action):
	var commit = false
	if action == "move_up":
		if y_coord == 0:
			pass
		else:
			y_coord -= 1
			commit = true
	elif action == "move_down":
		if y_coord == 4:
			pass
		else:
			y_coord += 1
			commit = true
	elif action == "move_left":
		if x_coord == 0:
			pass
		else:
			x_coord -= 1
			commit = true
	elif action == "move_right":
		if x_coord == 4:
			pass
		else:
			x_coord += 1
			commit = true

	if commit:
		can_move = false
		timer.start()
		Global.move_counter += 1
		rotation = direction[action.split("_")[1]]

# Function to handle player inputs
func _input(event):
	# Check to see if player has any moves left	
	if Global.move_counter >= Global.total_moves:
		pass
	else:
	# Loop through to see if the player has inputted any valid actions
		for action in actions:
			if Input.is_action_pressed(action) && can_move:
				commit_action(action)
	
	# Conditions to prevent conditious movement from a button being held down
	for action in actions:
		if event.is_action_released(action):
			can_move = true
			break
	
	
