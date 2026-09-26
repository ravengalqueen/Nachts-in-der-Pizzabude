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
			


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func _movement():
	if globals.night >= 3 && globals.hours >= 3:
		while globals.hours < 6: 
			await get_tree().create_timer(10).timeout
			if !following:
				if randi_range(1,20) <= level:
					globals.highdrough_pos += 1
			else:
				if randi_range(1,20) >= level:
					globals.highdrough_pos -= 1
					
