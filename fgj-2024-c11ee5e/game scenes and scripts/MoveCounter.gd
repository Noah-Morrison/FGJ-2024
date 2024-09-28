extends Label


func _ready():
	var player = get_node("/root/FloorGrid/Player")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.text = str("Moves used: " , Global.move_counter , "/" , Global.total_moves, "\n",
					"\n",
					"Mouse Position: " , Global.player_x + 1, "-", Global.player_y, "\n",
					"\n",
					"Cheese Hole 1: ", Global.cheese_holes[0][0] + 1, "-", Global.cheese_holes[0][1] + 1, "\n",
					"Cheese Hole 2: ", Global.cheese_holes[1][0] + 1, "-", Global.cheese_holes[1][1] + 1, "\n",
					"\n",
					)
