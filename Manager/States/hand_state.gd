extends StateBase

func on_enter():
	print("enter ", self)
	pass
	
func on_exit():
	print("exit ", self)
#	card.queue_free()
	pass
	
func on_update(delta):
	pass
	
func on_update_physics(delta):
	pass
