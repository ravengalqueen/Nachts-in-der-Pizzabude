extends Node2D

var vis = false
var gone = true
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	remove()
	await get_tree().create_timer(15.2).timeout
	remove()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func spawn():
	gone = false
	print("blandt has spawned")
	self.show()
	self.make_visible()

func remove():
	gone = true
	vis = false
	self.hide()
	
func make_visible():
	print("blandt is visible")
	vis = true
	await get_tree().create_timer(4.5).timeout
	if vis == true && gone == false:
		globals.blandt_jumpscare = true

func make_invisible():
	vis = false
