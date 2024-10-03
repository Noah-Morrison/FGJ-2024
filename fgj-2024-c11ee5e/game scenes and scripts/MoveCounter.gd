extends Label


func _ready():
	var player = get_node("/root/FloorGrid/Player")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.text = str("Moves (P1): " , Global.move_counter , "/" , Global.total_moves, "\n",
					##"\n",
					"Moves (P2): " , Global.move_counterP2 , "/" , Global.total_moves, "\n",
					##"\n",
					##"Position (P1): " , Global.player1_x + 1, "-", Global.player1_y, "\n",
					##"\n",
					##"Position (P2): " , Global.player2_x + 1, "-", Global.player2_y, "\n",
					##"\n",
					##"Cheese Hole 1: ", Global.cheese_holes[0][0] + 1, "-", Global.cheese_holes[0][1] + 1, "\n",
					##"Cheese Hole 2: ", Global.cheese_holes[1][0] + 1, "-", Global.cheese_holes[1][1] + 1, "\n",
					##"\n",
					)
