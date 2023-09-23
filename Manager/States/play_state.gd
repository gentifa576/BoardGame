extends StateBase

var target_position = Vector2.ZERO
var tween = create_tween()

func on_enter():
	target_position = Vector2(360, 640)
	var tween = create_tween()
	tween.tween_property(card, "position", target_position, 0.5)
	print("enter ", self)
	pass
	
func on_exit():
	print("exit ", self)
	pass
	
func on_update(delta):
	pass
	
func on_update_physics(delta):
	pass
