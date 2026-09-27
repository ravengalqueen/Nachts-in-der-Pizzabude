extends Area2D
@onready var codiscary = $codiscary
@onready var thrityninescary = $"39(2)"
@onready var blandtscary = $"blandtscary"
@onready var petarscary = $Petar
@onready var Highdroughscary = $Highdrough
@onready var scream = $"../AudioStreamPlayer"
var is_playing = false

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
		petarscary.hide()
		Highdroughscary.hide()
		globals.codi_jumpscare = false
		await get_tree().create_timer(6.0).timeout
		get_tree().change_scene_to_file("res://YOUWON.tscn")
	elif globals.thritynine_jumpscare == true:
		if !is_playing:
			scream.play()
		is_playing = true
		thrityninescary.show()
		codiscary.hide()
		blandtscary.hide()
		petarscary.hide()
		Highdroughscary.hide()
		globals.thritynine_jumpscare = false
		await get_tree().create_timer(8.0).timeout
		get_tree().change_scene_to_file("res://YOUWON.tscn")
	elif globals.blandt_jumpscare == true:
		if !is_playing:
			scream.play(0.2)
		is_playing = true
		print("blandtaiaiaiaiaiaiaiaaaiaii")
		blandtscary.show()
		codiscary.hide()
		thrityninescary.hide()
		petarscary.hide()
		Highdroughscary.hide()
		globals.blandt_jumpscare = false
		await get_tree().create_timer(8.0).timeout
		get_tree().change_scene_to_file("res://YOUWON.tscn")
	elif globals.petar_jumpscare == true:
		if !is_playing:
			scream.play()
			await get_tree().create_timer(4.5).timeout
		is_playing = true
		
		await get_tree().create_timer(8.0).timeout
		get_tree().change_scene_to_file("res://YOUWON.tscn")
		blandtscary.hide()
		codiscary.hide()
		thrityninescary.hide()
		petarscary.show()
		Highdroughscary.hide()
		globals.petar_jumpscare = false
		await get_tree().create_timer(8.0).timeout
		get_tree().change_scene_to_file("res://YOUWON.tscn")
	elif globals.highdrough_jumpscare == true:
		blandtscary.hide()
		codiscary.hide()
		thrityninescary.hide()
		petarscary.hide()
		Highdroughscary.show()
		globals.highdrough_jumpscare = false
		await get_tree().create_timer(8.0).timeout
		get_tree().change_scene_to_file("res://YOUWON.tscn")
