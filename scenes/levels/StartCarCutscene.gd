extends Node3D

@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _ready() -> void:
	CutsceneManager.current_animation_track = animation_player


func change_to_first_scene() -> void:
	LevelController.change_scene(1, "CHAPTER 1", "I SEE YOU", true)
