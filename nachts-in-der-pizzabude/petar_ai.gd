extends Node

var level: int
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	match globals.night: 
		1:
			level = 3
		2:
			level = 4
		3: 
			level = 5
		4: 
			level = 7
		5: 
			level = 8
		6:
			level = 7
			
	_movement()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
		
func _movement():
	while globals.hours < 6:
		await get_tree().create_timer(10.7).timeout
		if randi_range(1,20) <= level:
			if globals.petar_position < 6:
				globals.petar_position += 1
				print("petar" + str(globals.petar_position))
				continue
			elif globals.petar_position == 6:
				if globals.door_left_open == false:
					globals.petar_position = randi_range(2,4)
					print(globals.petar_position)
					continue
				else:
					globals.petar_position += 1
					break
					
					
			else:
				print("oh oh das geht aber über 7")
