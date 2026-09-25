extends Node
var energy = 50.0

var night = 1
var door_left_open = false
var door_right_open = true

# camera positions
#1: stage, 2: main area, 3: storage room, 4: play area, 5: kitchen, 6: hallway 1, 7: hallway 2
var camera_position = 1

# animatronic positions

#petar: 1: Stage, 2: Backstage, 3: Main area, 4: Hallway, 5: office windows, 6: office doors, 7: jumpscares
var petar_position = 1
func _process(delta: float) -> void:
	if petar_position == 7: 
		print("rahhh i am a jumpscare")
	pass

# Codi positions like camera positions
var codi_position = 1

func discharge(amount):
	amount = clamp(amount, 0.1, 100.0)
	energy = clamp((energy-amount), 0.0, 100.0)

func recharge(amount):
	amount = clamp(amount, 0.1, 100.0)
	energy = clamp((energy+amount), 0.0, 100.0)
