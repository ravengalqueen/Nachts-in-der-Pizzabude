extends Sprite2D

var value: float

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	value = globals.energy
	if value <= 17:
		texture = load("res://resources/images/scale_1_red.webp")
	if value <= 33 && value >= 17:
		texture = load("res://resources/images/scale_2_red.webp")
	if value <= 49 && value >= 33:
		texture = load("res://resources/images/scale_3_yellow.webp")
	if value <= 66 && value >= 49:
		texture = load("res://resources/images/scale_4_yellow.webp")
	if value <= 83 && value >= 66:
		texture = load("res://resources/images/scale_5_green.webp")
	if value >= 83:
		texture = load("res://resources/images/scale_6_green.webp")
