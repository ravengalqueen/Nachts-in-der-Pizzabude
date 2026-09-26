extends Label

@onready var clock = $"."
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_clock()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _clock():
	clock.text = (str(globals.hours))
	
