extends Node

var time: float
var countdown = 50
var energy_stealer: bool
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	match globals.night:
		1: 
			time = 2
			energy_stealer = true
		2: 
			time = 1.7
			energy_stealer = true
		3: 
			time = 1.5
			energy_stealer = true
		4: 
			time = 1.2
			energy_stealer = false
		5: 
			time = 0.9
			energy_stealer = false
		6: 
			time = 0.7
			energy_stealer = false
	print(globals.night)
	print(time)
	_movement()
		
func _movement():
	while globals.hours < 6: 
		await get_tree().create_timer(time).timeout
		if globals.camera_position != 1:
			countdown -= 1
			print(countdown)
			if countdown == 0:
				break
		else: 
			if countdown < 49:
				countdown += 2
			elif countdown == 49:
				countdown += 1
			print(countdown)
		

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if countdown == 0:
		globals.thritynine_waiting = false
		if globals.door_right_open: 
			globals.thritynine_jumpscare = true
		else: 
			countdown = 50
			globals.thritynine_waiting = true
			if energy_stealer == true:
				globals.discharge(17)
			else: 
				globals.discharge(13)
			_movement()
			
