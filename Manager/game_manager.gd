extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	Global.card_played.connect(card_played_event)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func card_played_event(card: Card):
	card.state_manager.transition(StateManager.States.IN_PLAY)
