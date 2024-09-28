extends Label



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.text = str("Moves used\n" , Global.move_counter , "/" , Global.total_moves)
