extends StateBase

@export var crop_sprite_sheet: AtlasTexture
@onready var crop_sprite = $Sprite2D
@onready var growth_indicator = $Label
@onready var growth_multiplier = 1
var growth_stage
var growth_progress
var growth_dictionary = {0: 3, 1: 3, 2: 5}

func on_enter():
	growth_stage = 0
	growth_progress = 0
	crop_sprite_sheet.region = Rect2(0, 0, 64, 64)
	crop_sprite.texture = crop_sprite_sheet
	
	Global.day_end.connect(grow)
	
	growth_indicator.visible = true
	crop_sprite.visible = true
	
	print("enter ", self)
	pass
	
func on_exit():
	Global.day_end.disconnect(grow)
	
	growth_indicator.visible = false
	crop_sprite.visible = false
	
	print("exit ", self)
	pass
	
func on_update(delta):
	growth_indicator.text = str(growth_stage + 1)
	growth_indicator.tooltip_text = str(growth_progress + 1)
	crop_sprite.texture.region = Rect2(growth_stage * 64, 0, 64, 64)
	pass
	
func on_update_physics(delta):
	pass
	
func grow():
	growth_progress += growth_multiplier
	if growth_dictionary[growth_stage] <= growth_progress:
		growth_stage += 1
		growth_progress = 0
	if !growth_dictionary.has(growth_stage):
		print(card.card_name, " fully grown")
		transition_state.emit(self, StateManager.States.IN_HAND)
