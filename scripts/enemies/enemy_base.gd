class_name EnemyBase
extends Area2D

signal transformed

enum State {
	ACTIVE,
	TOUCHED,
	TRANSFORMED
}

@export var required_flow_strength: float = 0.35

var state: State = State.ACTIVE

@onready var visual: Polygon2D = $Visual

func _ready() -> void:
	body_entered.connect(_on_body_entered)

func _on_body_entered(body: Node) -> void:
	if body.has_method("get_flow_strength"):
		transform_from_player(body)

func transform_from_player(player: Node) -> void:
	if state == State.TRANSFORMED:
		return

	var flow_strength := 1.0
	if player.has_method("get_flow_strength"):
		flow_strength = player.get_flow_strength()

	if flow_strength < required_flow_strength:
		return

	state = State.TOUCHED
	_become_transformed()

func _become_transformed() -> void:
	state = State.TRANSFORMED
	visual.color = Color(1.0, 0.78, 0.92, 1.0)
	set_deferred("monitoring", false)
	transformed.emit()
