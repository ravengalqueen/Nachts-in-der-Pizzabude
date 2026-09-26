extends Node
var energy = 0.0

var nightunl = 1
var hours = 0
var night = 1
var door_left_open = false
var door_right_open = true

# camera positions
#1: stage, 2: main area, 3: storage room, 4: play area, 5: kitchen, 6: hallway 1, 7: hallway 2
var camera_position = 2


# animatronic jumpscares

func _process(delta: float) -> void:
	if petar_position == 7: 
		petar_jumpscare = true
		print("rahhh i am a jumpscare")
	if codi_jumpscare == true:
		print("rahhh i am a jumpscare from codi")
	if thritynine_jumpscare == true:
		print("rahhhhhhh i am a jumpscare")

# animatronic positions

#petar: 1: Stage, 2: Backstage, 3: Main area, 4: Hallway, 5: office windows, 6: office doors, 7: jumpscares
var petar_position = 1
var petar_jumpscare = true

# Codi positions like camera positions
var codi_position = 1
var codi_jumpscare = false

# 39 variables, no specific positions 
# cuz bro is only at the stage and at the office
var thritynine_waiting = true
var thritynine_jumpscare = false

# blandt vars, 0 = not there, 1 = right part of the office, 2 = left part of the office
# cuz bra is only at the office
var blandt_position = 0
var blandt_jumpscare = false

# Highdrough;, 0 = play_area, 1 = main_area, 2 = Hallway, 3 = Office doors, 4 = jumpscare
var highdrough_pos = 0
var highdrough_jumpscare = false
var highdrough_called = false


# energy system

func discharge(amount):
	amount = clamp(amount, 0.1, 100.0)
	energy = clamp((energy-amount), 0.0, 100.0)

func recharge(amount):
	amount = clamp(amount, 0.1, 100.0)
	energy = clamp((energy+amount), 0.0, 100.0)
