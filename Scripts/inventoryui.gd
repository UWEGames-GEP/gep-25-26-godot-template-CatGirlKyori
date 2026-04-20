extends Control
class_name inventoryui
@export var InventoryManager: Node3D

func _on_orb_button_pressed() -> void:
	print("Button Pressed")
	InventoryManager.drop_item_at(0)
