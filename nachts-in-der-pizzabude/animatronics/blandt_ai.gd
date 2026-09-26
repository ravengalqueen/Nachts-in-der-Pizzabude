extends Node2D

var vis = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	await get_tree().create_timer(15.2).timeout


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_visible_on_screen_notifier_2d_screen_entered() -> void:
	await get_tree().create_timer(4.5).timeout
	if vis == true:
		globals.blandt_jumpscare = true
	pass # Replace with function body.


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	vis = false
	pass # Replace with function body.
