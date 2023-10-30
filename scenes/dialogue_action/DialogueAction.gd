extends Node3D

@export var dialogue_resource : DialogueResource

func run_dialogue(dialogue : String) -> void:
	CutsceneManager.current_dialogue = dialogue_resource
#	DialogueManager.show_example_dialogue_balloon(dialogue_resource, dialogue)
	CutsceneManager.run_dialogue(dialogue)
	
