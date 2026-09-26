extends Area2D

var cams
@onready var doorleft = $"../doorleft"
@onready var doorright = $"../doorright"
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	cams = $"../cams"
	cams.hide()
	_Nighttimer()
	_testing_battery()
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	globals.discharge(globals.percent)


func _on_mouse_entered():
	if cams.visible:
		cams.hide()
		globals.percent -= 0.005
		doorleft.show()
		doorright.show()
	else:
		cams.show()
		globals.percent += 0.005
		doorleft.hide()
		doorright.hide()
	print("harhar")
	

func _loser():
	if globals.codi_jumpscare == true:
		print("codihoarhoarhoar")
		get_tree().change_scene_to_file("res://JUMPSCARE.tscn")
	elif globals.thritynine_jumpscare == true:
		print("39rahhhhh")
		get_tree().change_scene_to_file("res://JUMPSCARE.tscn")
	elif globals.blandt_jumpscare == true:
		print("blandtaiaiaiaiaiaiaiaaaiaii")
		get_tree().change_scene_to_file("res://JUMPSCARE.tscn")
	elif globals.petar_jumpscare == true:
		print("PETARPARKAR")
		get_tree().change_scene_to_file("res://JUMPSCARE.tscn")
		


		
func _Nighttimer():
	while true:
		await get_tree().create_timer(90.0).timeout
		globals.hours += 1 
		if globals.hours == 6:
			get_tree().change_scene_to_file("res://YOUWON.tscn")
			break
			
		


func _on_doorleft_pressed() -> void:
	if globals.door_left_open == true:
		globals.door_left_open = false
		globals.percent += 0.005
		print("closed")
	elif globals.door_left_open == false:
		globals.percent -= 0.005
		globals.door_left_open = true
		print("open up buttercup")


func _on_doorright_pressed() -> void:
	if globals.door_left_open == true:
		globals.percent += 0.005
		globals.door_left_open = false
		print("closed")
	elif globals.door_left_open == false:
		globals.percent -= 0.005
		globals.door_left_open = true
		print("open up buttercup")


func _testing_battery():
	for i in range(30):
		await get_tree().create_timer(2).timeout
		print(globals.energy)
