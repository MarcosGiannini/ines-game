class_name PlayerJumpSystem
extends RefCounted

var jump_velocity: float = -610.0
var chain_jump_velocity: float = -660.0
var coyote_time: float = 0.11
var jump_buffer_time: float = 0.12
var chain_window: float = 0.24

var _time_since_floor: float = 0.0
var _jump_buffer: float = 0.0
var _time_since_jump: float = 999.0
var chain_count: int = 0

func tick(delta: float, is_on_floor: bool) -> void:
	if is_on_floor:
		_time_since_floor = 0.0
	else:
		_time_since_floor += delta

	_jump_buffer = maxf(_jump_buffer - delta, 0.0)
	_time_since_jump += delta

	if is_on_floor and _time_since_jump > chain_window:
		chain_count = 0

func queue_jump() -> void:
	_jump_buffer = jump_buffer_time

func consume_jump_if_available(velocity: Vector2, is_on_floor: bool) -> Vector2:
	if _jump_buffer <= 0.0:
		return velocity

	if not is_on_floor and _time_since_floor > coyote_time:
		return velocity

	var is_chain := _time_since_jump <= chain_window
	velocity.y = chain_jump_velocity if is_chain else jump_velocity
	chain_count = chain_count + 1 if is_chain else 1

	_jump_buffer = 0.0
	_time_since_jump = 0.0
	_time_since_floor = coyote_time + 1.0
	return velocity
