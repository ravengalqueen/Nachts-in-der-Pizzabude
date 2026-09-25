extends Node
var energy = 100.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func discharge(amount):
	amount = clamp(amount, 0.1, 100.0)
	energy = clamp((energy-amount), 0.0, 100.0)

func recharge(amount):
	amount = clamp(amount, 0.1, 100.0)
	energy = clamp((energy+amount), 0.0, 100.0)
