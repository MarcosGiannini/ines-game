class_name PlayerMovement
extends RefCounted

var max_speed: float = 460.0
var acceleration: float = 3600.0
var air_acceleration: float = 2400.0
var minimum_flow_speed: float = 95.0
var turn_boost: float = 1.45

func apply_horizontal_velocity(
	velocity: Vector2,
	input_direction: float,
	facing_direction: int,
	is_on_floor: bool,
	delta: float
) -> Vector2:
	var target_speed := _get_target_speed(input_direction, facing_direction)
	var accel := acceleration if is_on_floor else air_acceleration

	if input_direction != 0.0 and sign(input_direction) != sign(velocity.x) and absf(velocity.x) > minimum_flow_speed:
		accel *= turn_boost

	velocity.x = move_toward(velocity.x, target_speed, accel * delta)
	return velocity

func _get_target_speed(input_direction: float, facing_direction: int) -> float:
	if input_direction != 0.0:
		return input_direction * max_speed

	return float(facing_direction) * minimum_flow_speed
