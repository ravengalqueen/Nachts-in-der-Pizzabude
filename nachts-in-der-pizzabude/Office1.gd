extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_mouse_entered():
	await get_tree().create_timer(0.4).timeout
	get_tree().change_scene_to_file("res://cams.tscn")
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
		
	

	
