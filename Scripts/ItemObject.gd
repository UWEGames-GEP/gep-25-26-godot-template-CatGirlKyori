extends Area3D
class_name ItemObject

func _ready() -> void:
	print("test")
	return

func on_body_entered(body) -> void:
	print ("collide")
	queue_free()
	#if body.is_in_group("Player"):
	#	print ("collide")
	#	queue_free()
	#	print ("collide")
 
