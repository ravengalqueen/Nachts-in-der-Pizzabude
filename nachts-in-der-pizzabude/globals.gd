extends Node
var energy = 100.0

var night = 1
var door_left_open = false
var door_right_open = true


# animatronic positions

#petar: 1: Stage, 2: Backstage, 3: Main area, 4: Hallway, 5: office windows, 6: office doors, 7: jumpscares
var petar_position = 1
func _process(delta: float) -> void:
	if petar_position == 7: 
		print("rahhh i am a jumpscare")
	pass

func discharge(amount):
	amount = clamp(amount, 0.1, 100.0)
	energy = clamp((energy-amount), 0.0, 100.0)

func recharge(amount):
	amount = clamp(amount, 0.1, 100.0)
	energy = clamp((energy+amount), 0.0, 100.0)

