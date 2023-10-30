extends Node3D

@export var animation_player : AnimationPlayer

func _ready() -> void:
	CutsceneManager.current_animation_track = animation_player
