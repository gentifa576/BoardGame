extends Node2D
class_name Card
@export var card_name:String
@onready var state_manager:StateManager = $StateManager

# Called when the node enters the scene tree for the first time.
func _ready():
	$ImageComponent/Name.text = card_name
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	state_manager.state_dictionary[state_manager.current_state].on_update(delta)

func _physics_process(delta):
	state_manager.state_dictionary[state_manager.current_state].on_update_physics(delta)

func _on_panel_container_gui_input(event):
	if event is InputEventMouseButton && event.pressed && event.button_index == MOUSE_BUTTON_LEFT:
		Global.card_played.emit(self)
