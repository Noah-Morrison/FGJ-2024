extends Node2D

var holes = 2
var prevlocx = 100
var prevlocy =100
# this reads left to right for each line in the grid

# Called when the node enters the scene tree for the first time.
func _ready():
	for x in 5:
		for y in 5:
			$cheese.set_cell(0, Vector2i(x,y),1,Vector2i(0,0))
			$shadow.set_cell(0, Vector2i(x,y),0,Vector2i(0,0))
	for i in range(holes):
		var xrand = randi_range(0,4)
		while xrand == prevlocx:
			xrand = randi_range(0,4)
		var yrand = randi_range(0,4)
		while yrand == prevlocy:
			yrand = randi_range(0,4)
		$cheese.set_cell(0, Vector2i(xrand,yrand),2,Vector2i(0,0))
		$shadow.set_cell(0, Vector2i(xrand,yrand),1,Vector2i(0,0))
		Global.cheese_holes[i][0] = xrand
		Global.cheese_holes[i][1] = yrand
		prevlocx = xrand
		prevlocy = yrand

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
