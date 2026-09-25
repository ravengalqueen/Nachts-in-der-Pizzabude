extends Node

var level: int
var same_cam = false

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
	else:
		same_cam = false
	
func _movement():
	pass
	
