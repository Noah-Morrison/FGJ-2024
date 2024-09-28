extends Node2D
var aster_grid = AStarGrid2D.new()
@export var speed = 300
var timer = null
var movement_delay = 0.35
var can_move = true
var move_to_cheese_hole = true
# Called when the node enters the scene tree for the first time.
func _ready():
	timer = Timer.new()
	timer.set_one_shot(true)
	timer.set_wait_time(movement_delay)
	timer.connect("timeout", Callable(self, "on_timeout_complete"))
	add_child(timer)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func on_timeout_complete():
	can_move = true

func _input(_event):
	if rng == 1 && can_move:
		if position.y < 100:
			pass
		else:
			position.y -= 105
			rotation = 0
			can_move = false
			timer.start()
	if rng == 2 && can_move:
		if position.y > 400:
			pass
		else:
			position.y += 105
			rotation = 3.2
			can_move = false
			timer.start()
	if rng == 3 && can_move:
		if position.x < 100:
			pass
		else:
			position.x -= 105
			rotation = 4.7
			can_move = false
			timer.start()
	if rng == 4 && can_move:
		if position.x > 400:
			pass
		else:
			position.x += 105
			rotation = 1.5
			can_move = false
			timer.start()
	
