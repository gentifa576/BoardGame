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

func _on_panel_container_gui_input(event):
	if event is InputEventMouseButton && event.pressed && event.button_index == MOUSE_BUTTON_LEFT:
		transition_state.emit(self, StateManager.States.IN_PLAY)
