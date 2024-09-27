extends Node2D

@export var speed = 300
var timer = null
var movement_delay = 0.35
var can_move = true
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

func _input(event):
	if Input.is_action_pressed("move_up") && can_move:
		if position.y < 100:
			pass
		else:
			position.y -= 105
			rotation = 0
			can_move = false
			timer.start()
	if Input.is_action_pressed("move_down") && can_move:
		if position.y > 400:
			pass
		else:
			position.y += 105
			rotation = 3.2
			can_move = false
			timer.start()
	if Input.is_action_pressed("move_left") && can_move:
		if position.x < 100:
			pass
		else:
			position.x -= 105
			rotation = 4.7
			can_move = false
			timer.start()
	if Input.is_action_pressed("move_right") && can_move:
		if position.x > 400:
			pass
		else:
			position.x += 105
			rotation = 1.5
			can_move = false
			timer.start()
	if event.is_action_released("move_up"):
		can_move = true
	if event.is_action_released("move_down"):
		can_move = true
	if event.is_action_released("move_left"):
		can_move = true
	if event.is_action_released("move_right"):
		can_move = true
	
