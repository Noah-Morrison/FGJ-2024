extends Node

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
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
