extends Node

var timer = null
var timer_delay = 1
var cheese_fallen = false

var auto_reset = true

var move_counter = 0
var move_counterP2 = 0
var total_moves = 8

var cheese_holes = []
var player_alive = [-1, -1]
var hole_amount = 2
var hole_coords = 2 #(x, y)

# 'Getter' variables for player 1's co-ordinates
var player1_x = -1
var player1_y = -1

# 'Getter' variables for player 2's co-ordinates
var player2_x = -1
var player2_y = -1

var state_checks = 0

# Called when the node enters the scene tree for the first time.
func _ready():
# Initialise a global 2D array for the cheese holes co-ordinates
	for i in range(hole_amount):
		cheese_holes.append([])
		for j in hole_coords:
			cheese_holes[i].append(0)
			
# Adds timer
	timer = Timer.new()
	timer.set_one_shot(true)
	timer.set_wait_time(timer_delay)
	timer.connect("timeout", Callable(self, "on_timeout_complete"))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if move_counter >= total_moves or move_counterP2 >= total_moves:
		cheese_fallen = true
	
	if cheese_fallen:
		if player_alive[0] == 2 and (player_alive[1] == -1 or player_alive[1] == 2):
			await get_tree().create_timer(2.0).timeout
			reset()


	
func on_timeout_complete():
	cheese_fallen = true

func reset():
	get_tree().reload_current_scene()
	move_counter = 0
	move_counterP2 = 0
	cheese_fallen = false
	player_alive = [-1, -1]
