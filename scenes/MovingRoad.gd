extends Node3D

@export var speed : float = 10

func _ready() -> void:
	pass
	

func _process(delta: float) -> void:
	moving_road(delta)
	
	
func moving_road(delta: float) -> void:
	position.z += speed * delta
	if position.z >= 56: position.z = -56
