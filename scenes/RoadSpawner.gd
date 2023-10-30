extends Node3D

@export var road_resource : PackedScene


func _ready() -> void:
	for i in range(4):
		spawn_road(Vector3(0, 0.28, (i-2) * 28))
	
	
func spawn_road(pos : Vector3) -> void:
	var road = road_resource.instantiate()
	road.position = pos
	road.scale.z = 7.05
	add_child(road)
	
	
func move_road() -> void:
	pass
	
	
