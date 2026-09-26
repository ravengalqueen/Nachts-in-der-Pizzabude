extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_startgamebutt_button_down() -> void:
	if globals.nightunl == 1:
		globals.night ==1
		get_tree().change_scene_to_file("res://Office1.tscn")
		print("feddyfasbar")
	elif globals.nightunl == 2:
		globals.night == 2
		get_tree().change_scene_to_file("res://Office1.tscn")
	elif globals.nightunl == 3:
		globals.night == 3
		get_tree().change_scene_to_file("res://Office1.tscn")
	elif globals.nightunl == 4:
		globals.night == 4
		get_tree().change_scene_to_file("res://Office1.tscn")
	elif globals.nightunl == 5:
		globals.night == 5
		get_tree().change_scene_to_file("res://Office1.tscn")
	elif globals.nightunl == 6:
		globals.night == 6
		get_tree().change_scene_to_file("res://Office1.tscn")


func _on_nightsbutt_button_down() -> void:
	get_tree().change_scene_to_file("res://Nightselect.tscn")
