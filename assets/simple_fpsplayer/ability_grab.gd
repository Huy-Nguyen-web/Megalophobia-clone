extends RayCast3D

var object_grabbed = null
var mass_limit = 50
var throw_force = 10

var can_use = true

@onready var interact_label: Label = $"../../../CrossHair/InteractLabel"


func _process(delta):
	check_show_interact_label()
	if Input.is_action_just_pressed("interact"):
		if get_collider() is InteractObject:
			var object_to_interact : InteractObject = get_collider()
			object_to_interact.interact()


func check_show_interact_label() -> void:
	if get_collider() is InteractObject:
		interact_label.show()

	else:
		interact_label.hide()


