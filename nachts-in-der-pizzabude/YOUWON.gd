extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	


func _on_nextnight_button_down() -> void:
	globals.hours = -6
	globals.night = +1
	get_tree().change_scene_to_file("res://Office1.tscn")
	if globals.nightunl == 1:
		globals.nightunl = +1
		print("worked")
	elif globals.nightunl == 2:
		globals.nightunl = +1
	elif globals.nightunl == 3:
		globals.nightunl = +1
	elif globals.nightunl == 4:
		globals.nightunl = +1
	elif globals.nightunl == 5:
		globals.nightunl = +1
		



func _on_mainmenu_button_down() -> void:
	globals.hours = -6
	get_tree().change_scene_to_file("res://Mainmenu1.tscn")
	if globals.nightunl == 1:
		globals.nightunl = +1
		print("worked")
	elif globals.nightunl == 2:
		globals.nightunl = +1
	elif globals.nightunl == 3:
		globals.nightunl = +1
	elif globals.nightunl == 4:
		globals.nightunl = +1
	elif globals.nightunl == 5:
		globals.nightunl = +1
	
