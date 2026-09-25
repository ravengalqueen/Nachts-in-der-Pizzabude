extends Sprite2D

var base
var dragging = false
var of = Vector2(0,0)

func _ready() -> void:
	base = get_node("../base")
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if dragging:
		position = get_global_mouse_position() - of


func _on_button_button_down() -> void:
	dragging = true


func _on_button_button_up() -> void:
	dragging = true
