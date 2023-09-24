extends Node2D

class_name StateManager
enum States {IN_HAND, IN_DECK, IN_PLAY, IN_SELECT, AS_CROP}
@export var card: Card
@export var current_state: States
var state_dictionary: Dictionary = {}

# Called when the node enters the scene tree for the first time.
func _ready():
	for child in get_children():
		if child is StateBase:
			state_dictionary[child.state] = child
			child.transition_state.connect(transition)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func transition(state: StateBase, new_state: States):
	if state.state != current_state:
		return
		
	if !state_dictionary[new_state]:
		return
	
	if state_dictionary[current_state]:
		state_dictionary[current_state].on_exit()
	
	state_dictionary[new_state].on_enter()
	current_state = new_state
	
