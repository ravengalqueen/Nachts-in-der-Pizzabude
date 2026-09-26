extends Node
var energy = 100.0

var nightunl = 1
var hours = 0
var night = 1
var door_left_open = false
var door_right_open = true

# camera positions
#1: stage, 2: main area, 3: storage room, 4: play area, 5: kitchen, 6: hallway 1, 7: hallway 2
var camera_position = 1


# animatronic jumpscares

func _process(delta: float) -> void:
	if petar_position == 7: 
		print("rahhh i am a jumpscare")
	if codi_jumpscare == true:
		print("rahhh i am a jumpscare")

# animatronic positions

#petar: 1: Stage, 2: Backstage, 3: Main area, 4: Hallway, 5: office windows, 6: office doors, 7: jumpscares
var petar_position = 1


# Codi positions like camera positions
var codi_position = 1
var codi_jumpscare = false





# energy system

func discharge(amount):
	amount = clamp(amount, 0.1, 100.0)
	energy = clamp((energy-amount), 0.0, 100.0)

func recharge(amount):
	amount = clamp(amount, 0.1, 100.0)
	energy = clamp((energy+amount), 0.0, 100.0)

func _ready() -> void:
	_Nighttimer()
	
	
func _Nighttimer():
	while true:
		get_tree().create_timer(90.0).timeout
		hours+=1 
		if hours == 6:
			get_tree().change_scene_to_file("res://YOUWON.tscn")
			break

			
	
