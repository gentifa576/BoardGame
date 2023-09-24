extends Node
class_name StateBase

signal transition_state(state: StateBase, new_state: StateManager.States)

@export var state: StateManager.States
@export var card: Card

func on_enter():
	pass
	
func on_exit():
	pass
	
func on_update(delta):
	pass
	
func on_update_physics(delta):
	pass
