extends GameManager
class_name ItemObject

func _ready() -> void:
	return

func on_body_entered(body) -> void:
	if body.is_in_group("player"):
		print ("collide")
		get_node("Level/Node3D2").visible =false
		print ("collide")
