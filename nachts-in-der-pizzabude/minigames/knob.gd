extends Sprite2D

@export var distance = 250.0
@export var electrical_efficiency = 0.002
var base
var dragging = false
var of = Vector2(0,0)

func _ready() -> void:
	base = get_node("../base")
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if dragging:
		var last_angle = base.global_position.angle_to_point(global_position)
		
		var target_global_pos = get_global_mouse_position() - of
		var direction = base.global_position.direction_to(target_global_pos)
		global_position = base.global_position + (direction * distance)
		
		var current_angle = base.global_position.angle_to_point(global_position)
		var d_angle = angle_difference(last_angle, current_angle)
		var distance_traveled = abs(d_angle) * distance
		
		if distance_traveled > 5:
			globals.recharge(distance_traveled * electrical_efficiency)

		
		## REMOVE DEBUG
		print(globals.energy)


func _on_button_button_down() -> void:
	dragging = true


func _on_button_button_up() -> void:
	dragging = false
