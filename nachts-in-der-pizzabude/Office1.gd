extends Area2D

var cams
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	cams = $"../cams"
	cams.hide()
	_Nighttimer()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_mouse_entered():
	if cams.visible:
		cams.hide()
	else:
		cams.show()
	print("harhar")
	

		
func _Nighttimer():
	while true:
		await get_tree().create_timer(90.0).timeout
		globals.hours += 1 
		globals.discharge(8.5)
		if globals.hours == 6:
			get_tree().change_scene_to_file("res://YOUWON.tscn")
			break
			
		


func _on_doorleft_pressed() -> void:
	if globals.door_left_open == true:
		globals.door_left_open = false
		print("closed")
	elif globals.door_left_open == false:
		globals.door_left_open = true
		print("open up buttercup")


func _on_doorright_pressed() -> void:
	if globals.door_left_open == true:
		globals.door_left_open = false
		print("closed")
	elif globals.door_left_open == false:
		globals.door_left_open = true
		print("open up buttercup")
