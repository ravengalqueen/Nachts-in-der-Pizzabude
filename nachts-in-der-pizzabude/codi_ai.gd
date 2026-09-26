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
			globals.codi_position = randi_range(2,7)
			print("codi" + str(globals.codi_position))
			

func _same_camera():
	await get_tree().create_timer(3).timeout
	if same_cam == true:
		await get_tree().create_timer(300).timeout
		if same_cam == true: 
			globals.codi_jumpscare = true
	
	
