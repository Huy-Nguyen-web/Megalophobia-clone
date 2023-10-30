extends Node3D

# This is like a scene controller
@export var scenes : Array[PackedScene]

@onready var scene_changer: Control = $ChangeScene
@onready var animation_player: AnimationPlayer = $ChangeScene/AnimationPlayer

@onready var title_1: Label = $ChangeScene/Title1
@onready var title_2: Label = $ChangeScene/Title2

var current_scene : Node3D


func _ready() -> void:
	change_scene(0, "CHAPTER 1", "I SEE YOU", false)
	Console.add_command("change", change_scene_id, 1)


func change_scene_id(scene_id : String) -> void:
	Console.print_line("Change scene: %s" %scene_id)
	match scene_id:
		"0":
			change_scene(0, "", "", false)
		"1":
			change_scene(1, "CHAPTER 1", "I SEE YOU", false)
		"2":
			pass
		"3":
			pass
			

func change_scene(scene_id : int, title1 : String, title2 : String, do_intro : bool) -> void:
	if do_intro:
		title_1.text = title1
		title_2.text = title2
		
		if current_scene != null: current_scene.queue_free()
		
		current_scene = scenes[scene_id].instantiate()
		add_child(current_scene)
		
		animation_player.play("fade_out")
		await animation_player.animation_finished
		animation_player.play("fade_in")
	else:
		if current_scene != null: current_scene.queue_free()
		current_scene = scenes[scene_id].instantiate()
		add_child(current_scene)
		animation_player.play("fade_in")
