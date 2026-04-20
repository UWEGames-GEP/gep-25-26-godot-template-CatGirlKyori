extends Node
class_name Inventory

@export var items: Array[String] = []
@export var item_scenes: Dictionary = {"Orb": preload("res://orb thing.tscn")}
	

func add_item(id: String):
	items.append(id)
	print("Picked up: ", id)



func drop_item_at(index: int):
	if items.is_empty() or index >= items.size():
		return

	var id = items[index]
	items.remove_at(index)

	var scene: PackedScene = item_scenes.get(id)
	if scene == null:
		print("no scene found for item: ", id)
		return

	var dropped_item = scene.instantiate()

	if dropped_item is ItemObject:
		dropped_item.item_name = id

	var player = get_parent()
	dropped_item.global_transform.origin = player.global_transform.origin + player.global_transform.basis.z * 2.0

	get_tree().get_root().add_child(dropped_item)
	print("Dropped: ", id)
