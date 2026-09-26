extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func _jumpscare():
	if globals.codi_jumpscare == true:
		print("codihoarhoarhoar")
	elif globals.thritynine_jumpscare == true:
		print("39rahhhhh")
	elif globals.blandt_jumpscare == true:
		print("blandtaiaiaiaiaiaiaiaaaiaii")
	elif globals.petar_jumpscare == true:
		print("PETARPARKAR")
	
	
