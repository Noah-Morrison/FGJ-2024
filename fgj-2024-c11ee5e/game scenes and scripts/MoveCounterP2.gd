extends Label



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.text = str("P2 Moves used\n" , Global.move_counterP2 , "/" , Global.total_moves)
