extends Node
class_name ItemObject

func _ready() -> void:
	return

func on_body_entered(body) -> void:
	print ("collide")
	if body.is_in_group("player"):
		print ("collide")
		queue_free()
		print ("collide")
 
