extends Node

var timer = null
var timer_delay = 1
var cheese_fallen = false

var move_counter = 0
var total_moves = 8

var move_counterP2 = 0
var total_movesP2 = 5

var cheese_holes = []
var hole_amount = 2
var hole_coords = 2 #(x, y)

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
	if move_counter >= total_moves:
		cheese_fallen = true


	
func on_timeout_complete():
	cheese_fallen = true
