extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	

func _on_Mainmenu_button_pressed():
	globals.hours == 0
	get_tree().change_scene_to_file("res://Mainmenu1.tscn")
	if globals.nightunl == 1:
		globals.night = 2
	elif globals.nightunl == 2:
		globals.night = 3
	elif globals.nightunl == 3:
		globals.night = 4
	elif globals.nightunl == 4:
		globals.night = 5
	elif globals.nightunl == 5:
		globals.night = 6


func _on_nextnight_button_down() -> void:
	globals.hours == 0
	globals.night = +1
	get_tree().change_scene_to_file("res://Office1.tscn")
	if globals.nightunl == 1:
		globals.night = 2
	elif globals.nightunl == 2:
		globals.night = 3
	elif globals.nightunl == 3:
		globals.night = 4
	elif globals.nightunl == 4:
		globals.night = 5
	elif globals.nightunl == 5:
		globals.night = 6
		



func _on_main_menu_button_down() -> void:
	pass # Replace with function body.
