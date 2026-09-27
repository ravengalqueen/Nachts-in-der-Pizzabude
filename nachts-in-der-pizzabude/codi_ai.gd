extends Node

var level: int
var same_cam = false
var aggresive = false

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
	if globals.camera_position == globals.codi_position:
		same_cam = true
		_same_camera()
	else:
		same_cam = false
	
func _movement():
	while globals.hours < 6: 
		await get_tree().create_timer(12).timeout
		if randi_range(1,20) <= level: 
			var new_pos = randi_range(2,7)
			if globals.camera_position == new_pos:
				pass
			else: 
				globals.codi_position = new_pos
			print("codi" + str(globals.codi_position))
			

func _same_camera():
	for i in range(6):
		await get_tree().create_timer(1).timeout
		if same_cam == false:
			return
		else:
			continue
	globals.codi_jumpscare = true
	
	
