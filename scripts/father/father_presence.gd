class_name FatherPresence
extends Node

# Father presence system - Layer 2: Jump echo
# Emits a semi-transparent echo sprite when player jumps

@export var echo_delay: float = 0.1
@export var echo_opacity: float = 0.25
@export var echo_fade_duration: float = 0.8

var player: CharacterBody2D

func _ready() -> void:
	player = get_node("../Player")
	if player and player.has_signal("jumped"):
		player.jumped.connect(_on_player_jumped)

func _on_player_jumped() -> void:
	await get_tree().create_timer(echo_delay).timeout
	_create_echo_visual(player.global_position + Vector2(-30, 0))

func _create_echo_visual(position: Vector2) -> void:
	var echo = Polygon2D.new()
	echo.color = Color(1.0, 0.8, 0.4, echo_opacity)
	echo.polygon = PackedVector2Array([-15, -10, -10, -15, 0, -8, 10, -15, 15, -5, 12, 10, 0, 15, -12, 10])
	echo.global_position = position
	add_child(echo)

	var tween = create_tween()
	tween.set_trans(Tween.TRANS_CUBIC)
	tween.set_ease(Tween.EASE_IN)
	tween.tween_property(echo, "modulate", Color(1, 1, 1, 0), echo_fade_duration)
	await tween.finished
	echo.queue_free()

