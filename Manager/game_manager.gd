extends Node2D
class_name GameManager

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func card_played_event(card: Card):
#	card.state_manager.transition(StateManager.States.IN_PLAY)
	pass

func _on_button_pressed():
	Global.day_end.emit()
