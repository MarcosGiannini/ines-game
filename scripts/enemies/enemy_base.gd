class_name EnemyBase
extends Area2D

signal transformed

enum State {
	ACTIVE,
	TOUCHED,
	TRANSFORMED
}

@export var required_flow_strength: float = 0.35
@export var transform_duration: float = 0.5
@export var transform_color: Color = Color(1.0, 0.78, 0.92, 1.0)

var state: State = State.ACTIVE
var _original_scale: Vector2 = Vector2.ONE

@onready var visual: Polygon2D = $Visual
@onready var audio_player: AudioStreamPlayer2D = $AudioStreamPlayer2D
@onready var light: OmniLight2D = $OmniLight2D

func _ready() -> void:
	_original_scale = scale
	body_entered.connect(_on_body_entered)
	if light:
		light.energy = 0.0

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

	# Animate color transition
	var tween = create_tween()
	tween.set_trans(Tween.TRANS_CUBIC)
	tween.set_ease(Tween.EASE_OUT)
	tween.tween_property(visual, "color", transform_color, transform_duration)

	# Animate scale: expand then return to normal
	var scale_tween = create_tween()
	scale_tween.set_trans(Tween.TRANS_CUBIC)
	scale_tween.set_ease(Tween.EASE_OUT)
	scale_tween.tween_property(self, "scale", _original_scale * 1.2, transform_duration * 0.7)
	scale_tween.tween_property(self, "scale", _original_scale, transform_duration * 0.3)

	# Animate light intensity
	if light:
		var light_tween = create_tween()
		light_tween.set_trans(Tween.TRANS_CUBIC)
		light_tween.set_ease(Tween.EASE_OUT)
		light_tween.tween_property(light, "energy", 1.0, transform_duration)

	# Play sound
	if audio_player and audio_player.stream:
		audio_player.play()

	# Disable collision after transformation
	set_deferred("monitoring", false)

	transformed.emit()
