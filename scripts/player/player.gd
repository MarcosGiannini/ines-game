class_name Player
extends CharacterBody2D

const PlayerMovementScript := preload("res://scripts/player/player_movement.gd")
const PlayerJumpSystemScript := preload("res://scripts/player/player_jump.gd")

signal jumped

@export var gravity: float = 1600.0

var movement := PlayerMovementScript.new()
var jump_system := PlayerJumpSystemScript.new()
var facing_direction: int = 1

@onready var visual: Node2D = $Visual

func _physics_process(delta: float) -> void:
	var input_direction := Input.get_axis("move_left", "move_right")

	if input_direction != 0.0:
		facing_direction = int(sign(input_direction))
		visual.scale.x = facing_direction

	jump_system.tick(delta, is_on_floor())

	if Input.is_action_just_pressed("jump"):
		jump_system.queue_jump()

	velocity.y += gravity * delta
	velocity = movement.apply_horizontal_velocity(
		velocity,
		input_direction,
		facing_direction,
		is_on_floor(),
		delta
	)

	var velocity_before_jump := velocity.y
	velocity = jump_system.consume_jump_if_available(velocity, is_on_floor())
	if velocity.y < velocity_before_jump:  # Jump consumed (velocity.y becomes negative)
		jumped.emit()

	move_and_slide()

	for index in range(get_slide_collision_count()):
		var collision := get_slide_collision(index)
		var collider := collision.get_collider()
		if collider != null and collider.has_method("transform_from_player"):
			collider.transform_from_player(self)

func get_flow_strength() -> float:
	return clampf(absf(velocity.x) / movement.max_speed, 0.0, 1.0)
