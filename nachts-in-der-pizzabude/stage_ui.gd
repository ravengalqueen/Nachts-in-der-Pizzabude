extends Area2D



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var codi = $codi
	var thirtynine = $"39"
	var petar = $petar
	if globals.petar_position == 1:
		codi.show()
	else:
		codi.hide()
	if globals.petar_position == 1:
		petar.show()
	else:
		petar.hide()
	if globals.thritynine_waiting == true:
		thirtynine.show()
	else:
		thirtynine.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
