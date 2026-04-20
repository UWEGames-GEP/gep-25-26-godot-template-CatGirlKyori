extends Node
class_name Inventory

@export var items: Array[String] = []

func add_item(id: String):
	items.append(id)
	print("Picked up: ", id)
