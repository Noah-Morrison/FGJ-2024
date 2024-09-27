extends TileMap

var holes = 1
# Called when the node enters the scene tree for the first time.
func _ready():
	for x in 5:
		for y in 5:
			$".".set_cell(0, Vector2i(x,y),1,Vector2i(0,0))
	var xrand = randi_range(0,4)
	var yrand = randi_range(0,4)
	$".".set_cell(0, Vector2i(xrand,yrand),2,Vector2i(0,0))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
