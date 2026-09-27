extends Area2D

var cams
@onready var doorleft = $"../doorleft"
@onready var doorright = $"../doorright"
@onready var lights_on = $"../OfficeLightsOn"
@onready var lights_off = $"../OfficeLightsOff"
@onready var p_office = $"../petar"
@onready var h_office = $"../highdrough"
@onready var door_left = $"../DoorLeft"
@onready var door_right = $"../DoorRight"
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	cams = $"../../cams"
	cams.hide()
	_Nighttimer()
	_testing_battery()
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	globals.discharge(globals.percent)


func _on_mouse_entered():
	if cams.visible:
		cams.hide()
		globals.percent -= 0.005
		doorleft.show()
		doorright.show()
	else:
		cams.show()
		globals.percent += 0.005
		doorleft.hide()
		doorright.hide()
	

func _loser():
	if globals.codi_jumpscare == true:
		print("codihoarhoarhoar")
		get_tree().change_scene_to_file("res://JUMPSCARE.tscn")
	elif globals.thritynine_jumpscare == true:
		print("39rahhhhh")
		get_tree().change_scene_to_file("res://JUMPSCARE.tscn")
	elif globals.blandt_jumpscare == true:
		print("blandtaiaiaiaiaiaiaiaaaiaii")
		get_tree().change_scene_to_file("res://JUMPSCARE.tscn")
	elif globals.petar_jumpscare == true:
		print("PETARPARKAR")
		get_tree().change_scene_to_file("res://JUMPSCARE.tscn")
		


		
func _Nighttimer():
	while true:
		await get_tree().create_timer(90.0).timeout
		globals.hours += 1 
		if globals.hours == 6:
			globals.win = true
			get_tree().change_scene_to_file("res://YOUWON.tscn")
			break
			
		


func _on_doorleft_pressed() -> void:
	if globals.door_left_open == true:
		globals.door_left_open = false
		globals.percent += 0.005
		door_left.show()
	elif globals.door_left_open == false:
		globals.percent -= 0.005
		globals.door_left_open = true
		door_left.hide()


func _on_doorright_pressed() -> void:
	if globals.door_right_open == true:
		globals.door_right_open = false
		globals.percent += 0.005
		door_right.show()
	elif globals.door_right_open == false:
		globals.percent -= 0.005
		globals.door_right_open = true
		print("open up buttercup")
		door_right.hide()


func _testing_battery():
	for i in range(30):
		await get_tree().create_timer(2).timeout
		print(globals.energy)

		
func _noenergy():
	if globals.energy == 0:
		get_tree().change_scene_to_file("res://YOUWON.tscn")
		



func _on_button_button_down() -> void:
	if lights_off.is_visible_in_tree():
		lights_off.hide()
		globals.percent += 0.005
		_animatronic_in_door()
	else:
		lights_off.show()
		globals.percent -= 0.005
		h_office.hide()
		p_office.hide()
		
func _animatronic_in_door():
	if globals.petar_position == 5 or globals.petar_position == 6: 
		p_office.show()
	else:
		p_office.hide()
	if globals.highdrough_pos == 3:
		h_office.show()
	else:
		h_office.hide()
	
