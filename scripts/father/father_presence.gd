class_name FatherPresence
extends Node

# Father presence system - Layer 2: Jump echo
# Emits a semi-transparent echo sprite when player jumps
# Creates feeling of "someone jumping with me"

@export var echo_delay: float = 0.1  # seconds after jump
@export var echo_opacity: float = 0.25  # 25% opacity
@export var echo_fade_duration: float = 0.8  # fade out duration

var player: CharacterBody2D
var echo_scene: PackedScene

signal echo_emitted(position: Vector2)

func _ready() -> void:
	player = get_tree().root.get_node("Phase5_FirstWorld/Player")
	if player and player.has_signal("jumped"):
		player.jumped.connect(_on_player_jumped)

func _on_player_jumped() -> void:
	# Delay the echo slightly
	await get_tree().create_timer(echo_delay).timeout

	# Create echo at player's current position, offset slightly
	var echo_offset = Vector2(-30, 0)
	emit_signal("echo_emitted", player.global_position + echo_offset)

	# Create a visual echo (semi-transparent sprite)
	_create_echo_visual(player.global_position + echo_offset)

func _create_echo_visual(position: Vector2) -> void:
	# Simple polygon2D echo (mimics player shape)
	var echo = Polygon2D.new()
	echo.color = Color(1.0, 0.8, 0.4, echo_opacity)
	echo.polygon = PackedVector2Array([-15, -10, -10, -15, 0, -8, 10, -15, 15, -5, 12, 10, 0, 15, -12, 10)
	echo.global_position = position
	add_child(echo)

	# Fade out
	var tween = create_tween()
	tween.set_trans(Tween.TRANS_CUBIC)
	tween.set_ease(Tween.EASE_IN)
	tween.tween_property(echo, "modulate", Color(1, 1, 1, 0), echo_fade_duration)
	await tween.finished
	echo.queue_free()
