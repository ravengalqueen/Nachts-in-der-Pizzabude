extends Area2D
@onready var codiscary = $codiscary
@onready var thrityninescary = $"39(2)"
@onready var blandtscary = $"blandtscary"
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_jumpscare()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func _jumpscare():
	if globals.codi_jumpscare == true:
		thrityninescary.hide()
		blandtscary.hide()
		codiscary.show()
		await get_tree().create_timer(0.1).timeout
		get_tree().change_scene_to_file("res://YOUWON.tscn")
	
	elif globals.thritynine_jumpscare == true:
		thrityninescary.show()
		codiscary.hide()
		blandtscary.hide()
	elif globals.blandt_jumpscare == true:
		print("blandtaiaiaiaiaiaiaiaaaiaii")
		blandtscary.show()
		codiscary.hide()
		thrityninescary.hide()
		await get_tree().create_timer(8.0).timeout
		get_tree().change_scene_to_file("res://YOUWON.tscn")
	elif globals.blandt_jumpscare == true:
		await get_tree().create_timer(8.0).timeout
		get_tree().change_scene_to_file("res://YOUWON.tscn")
	elif globals.petar_jumpscare == true:
		await get_tree().create_timer(8.0).timeout
		get_tree().change_scene_to_file("res://YOUWON.tscn")
		
	
	
	
