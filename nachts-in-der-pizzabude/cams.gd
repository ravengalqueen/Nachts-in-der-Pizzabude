extends Node2D
var stage
var tn_stage
var p_stage
var c_stage
var main
var c_main
var p_main
var h_main
var storage
var c_storage
var play
var h_play
var c_play
var kitchen
var c_kitchen
var hallone
var p_hallone
var h_hallone
var c_hallone
var halltwo
var c_halltwo
var cam_stage
var cam_main
var cam_storage
var cam_play
var cam_kitchen
var cam_hallone
var cam_halltwo
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	stage = $stage
	tn_stage = $"stage/39"
	p_stage = $stage/petar
	c_stage = $stage/codi
	
	main = $main_area
	c_main = $main_area/CodiRaw
	p_main = $main_area/petar
	h_main = $main_area/highdrough
	
	storage = $storage_room
	c_storage = $storage_room/Codi
	
	play = $play_area
	h_play = $play_area/highdrough
	c_play = $play_area/CodiRaw
	
	
	kitchen = $kitchen
	c_kitchen = $kitchen/CodiRaw
	
	hallone = $hallway_left
	p_hallone = $hallway_left/petar
	h_hallone = $hallway_left/highdrough
	c_hallone = $hallway_left/CodiRaw
	
	halltwo = $hallway_right
	c_halltwo = $hallway_right/codi
	
	cam_stage = $cam_map/cam_stage
	cam_main = $cam_map/cam_main
	cam_storage = $cam_map/cam_storage
	cam_play = $cam_map/cam_play
	cam_kitchen = $cam_map/cam_kitchen
	cam_hallone = $cam_map/cam_hall1
	cam_halltwo = $cam_map/cam_hall2
	_on_cam_stage_button_down()
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_cam_stage_button_down() -> void:
	_hide_cams()
	if globals.thritynine_waiting == true:
		tn_stage.show()
	else:
		tn_stage.hide()
	if globals.codi_position == 1:
		c_stage.show()
	else:
		c_stage.hide()
	if globals.petar_position == 1:
		p_stage.show()
	else:
		p_stage.hide()
	stage.show()
	globals.camera_position = 1


func _on_cam_main_button_down() -> void:
	_hide_cams()
	if globals.codi_position == 2: 
		c_main.show()
	else:
		c_main.hide()
	if globals.petar_position == 3: 
		p_main.show()
	else:
		p_main.hide()
	if globals.highdrough_pos == 1:
		h_main.show()
	else: 
		h_main.show()
	main.show()
	globals.camera_position = 2


func _on_cam_storage_button_down() -> void:
	_hide_cams()
	if globals.codi_position == 3:
		c_storage.show()
	else:
		c_storage.hide()
	storage.show()
	globals.camera_position = 3


func _on_cam_play_button_down() -> void:
	_hide_cams()
	if globals.highdrough_pos == 0: 
		h_play.show()
	else:
		h_play.hide()
	if globals.codi_position == 4:
		c_play.show()
	else: 
		c_play.hide()
	play.show()
	globals.camera_position = 4



func _on_cam_kitchen_button_down() -> void:
	_hide_cams()
	if globals.codi_position == 5: 
		c_kitchen.show()
	else:
		c_kitchen.hide()
	kitchen.show()
	globals.camera_position = 5
	


func _on_cam_hall_1_button_down() -> void:
	_hide_cams()
	if globals.codi_position == 6:
		c_hallone.show()
	else:
		c_hallone.hide()
	if globals.highdrough_pos == 2:
		h_hallone.show()
	else:
		h_hallone.hide()
	if globals.petar_position == 4:
		p_hallone.show()
	else:
		p_hallone.hide()
	hallone.show()
	globals.camera_position = 6


func _on_cam_hall_2_button_down() -> void:
	_hide_cams()
	if globals.codi_position == 7: 
		c_halltwo.show()
	else: 
		c_halltwo.hide()
	halltwo.show()
	globals.camera_position = 7
	
func _hide_cams():
	stage.hide()
	main.hide()
	storage.hide()
	play.hide()
	kitchen.hide()
	hallone.hide()
	halltwo.hide()


func _on_call_button_button_down() -> void:
	globals.highdrough_called = true
	print("highdrough; called")


func _on_call_button_button_up() -> void:
	globals.highdrough_called = false
	print("highdrough; not called")
