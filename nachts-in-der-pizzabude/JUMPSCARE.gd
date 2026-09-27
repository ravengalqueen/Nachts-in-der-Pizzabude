extends Area2D
@onready var codiscary = $codiscary
@onready var thrityninescary = $"39(2)"
@onready var blandtscary = $"blandtscary"
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
		if !is_playing:
			scream.play()
		is_playing = true
		thrityninescary.hide()
		blandtscary.hide()
		codiscary.show()
		
		globals.codi_jumpscare = false
		get_tree().change_scene_to_file("res://YOUWON.tscn")
	elif globals.thritynine_jumpscare == true:
		if !is_playing:
			scream.play()
		is_playing = true
		thrityninescary.show()
		codiscary.hide()
		blandtscary.hide()
		await get_tree().create_timer(8.0).timeout
		get_tree().change_scene_to_file("res://YOUWON.tscn")
	elif globals.blandt_jumpscare == true:
		if !is_playing:
			scream.play()
		is_playing = true
		print("blandtaiaiaiaiaiaiaiaaaiaii")
		blandtscary.show()
		codiscary.hide()
		thrityninescary.hide()
		await get_tree().create_timer(8.0).timeout
		get_tree().change_scene_to_file("res://YOUWON.tscn")
	elif globals.petar_jumpscare == true:
		if !is_playing:
			scream.play()
		is_playing = true
		
		await get_tree().create_timer(8.0).timeout
		get_tree().change_scene_to_file("res://YOUWON.tscn")
		

	


func _on_audio_stream_player_finished() -> void:
	is_playing = true
