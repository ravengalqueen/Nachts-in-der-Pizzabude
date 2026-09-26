extends Area2D
@onready var codiscary = $codiscary
@onready var thrityninescary = $"39(2)"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_jumpscare()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func _jumpscare():
	if globals.codi_jumpscare == true:
		print("codihoarhoarhoar")
		thrityninescary.hide()
		codiscary.show()
	elif globals.thritynine_jumpscare == true:
		print("39rahhhhh")
		thrityninescary.show()
		codiscary.hide()
	elif globals.blandt_jumpscare == true:
		print("blandtaiaiaiaiaiaiaiaaaiaii")
	elif globals.petar_jumpscare == true:
		print("PETARPARKAR")
	
	
	
