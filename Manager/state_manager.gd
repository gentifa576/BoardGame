extends Node2D

class_name StateManager
@export var card: Card
enum States {IN_HAND, IN_DECK, IN_PLAY, IN_SELECT}

@export var current_state: States
var state_dictionary: Dictionary = {}

# Called when the node enters the scene tree for the first time.
func _ready():
	for child in get_children():
		if child is StateBase:
			state_dictionary[child.state] = child


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func transition(new_state: States):
	if new_state != current_state:
		state_dictionary[current_state].on_exit()
		current_state = new_state
		state_dictionary[current_state].on_enter()
