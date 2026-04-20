extends Area3D
class_name ItemObject

@export var item_area3d: Area3D
@export var item_node: Area3D
@export var item_name: String = ""
@export var InventoryManager: Node3D


func _ready() -> void:
	print("test")
	return

func _process(delta: float) -> void:
	if(item_area3d.get_overlapping_bodies().size() > 0 && item_node.is_visible_in_tree()):
		print("collide")
		item_node.visible = false 
		InventoryManager.add_item(item_name)
		

func drop_item_at(index: int) -> void:
	var inventory = get_tree().get_first_node_in_group("player").get_node("InventoryManager")
	
	


 
