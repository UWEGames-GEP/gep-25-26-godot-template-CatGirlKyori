extends BaseGameState
class_name PlayState

func enter_state() -> void:
	print("entered Play State")
	game_manager.get_tree().paused = false


func update_state(_delta: float) -> void:
	if Input.is_action_just_pressed("pause"):
		game_manager.toggle_pause()

func exit_state() -> void:
	print("Exited Play State")
