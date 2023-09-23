extends StateBase

var current_state

func on_enter():
	current_state = 0
	print("enter ", self)
	pass
	
func on_exit():
	print("exit ", self)
	pass
	
func on_update(delta):
	pass
	
func on_update_physics(delta):
	pass
