extends Node2D

@onready var cams = $cams
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if cams.is_inside_tree():
		print(true)
	else:
		print(false)
	globals.camera_position = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_cams_visibility_changed() -> void:
	if cams == null:
		return
	if cams.is_visible_in_tree():
		globals.camera_position = 1
	else:
		globals.camera_position = 0
		print("for the breakpoint")
