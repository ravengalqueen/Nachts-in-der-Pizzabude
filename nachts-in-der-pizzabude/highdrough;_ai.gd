extends Node
var level: int
var following = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	match globals.night:
		1: 
			level = 2
		2:
			level = 4
		3: 
			level = 7
		4:
			level = 5
		5: 
			level = 6
		6:
			level = 10
	_movement()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if globals.highdrough_called == true: 
		following = true
	else: 
		following = false
	
func _movement():
	while globals.hours < 6:
		if globals.night >= 3:
			while globals.hours < 6: 
				await get_tree().create_timer(10).timeout
				if !following:
					if randi_range(1,20) <= level:
						globals.highdrough_pos += 1
						print("highdrough;" + str(globals.highdrough_pos))
						if globals.highdrough_pos >= 3:
							break
				else:
					if randi_range(1,20) >= level and globals.highdrough_pos >= 0:
						globals.highdrough_pos -= 1
		else: 
			return
