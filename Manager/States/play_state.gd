extends StateBase

var target_position = Vector2.ZERO

func on_enter():
	target_position = Vector2(360, 640)
	var tween = create_tween()
	tween.tween_property(card, "position", target_position, 0.5)
	tween.tween_callback(transition)
	print("enter ", self)
	pass
	
func on_exit():
	print("exit ", self)
	pass
	
func on_update(delta):
	pass
	
func on_update_physics(delta):
	pass

func transition():
	transition_state.emit(self, StateManager.States.AS_CROP)
