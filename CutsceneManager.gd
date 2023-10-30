extends Node

var current_animation_track : AnimationPlayer
var current_dialogue: DialogueResource

func run_animation(animation : String) -> void:
	current_animation_track.play(animation)
	

func run_dialogue(dialogue : String) -> void:
	DialogueManager.show_example_dialogue_balloon(current_dialogue, dialogue)
