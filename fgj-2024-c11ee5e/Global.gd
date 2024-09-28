extends Node

var timer = null
var timer_delay = 1
var cheese_fallen = false

var move_counter = 0
var total_moves = 5

var move_counterP2 = 0
var total_movesP2 = 5
# Called when the node enters the scene tree for the first time.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if move_counter >= total_moves:
		cheese_fallen = true


func _ready():
	timer = Timer.new()
	timer.set_one_shot(true)
	timer.set_wait_time(timer_delay)
	timer.connect("timeout", Callable(self, "on_timeout_complete"))
	
func on_timeout_complete():
	cheese_fallen = true
