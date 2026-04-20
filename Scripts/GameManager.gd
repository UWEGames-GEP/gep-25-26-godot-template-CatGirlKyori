extends Node
class_name GameManager

@export var game_ui: Node
var current_state: BaseGameState

func _ready() -> void:
	change_state(PlayState.new(self))
	get_node("Level/TextEdit").visible =false
	get_node("Level/orb_button").visible =false
	
func _process(delta: float) -> void:
	if current_state:
		current_state.update_state(delta)

func change_state(new_state: BaseGameState) -> void:
	if current_state:
		current_state.exit_state()
	current_state = new_state
	current_state.enter_state()

func toggle_pause() -> void:
	if current_state is PlayState:
		change_state(PauseState.new(self))
		print("toggle pause")
		Input.mouse_mode = Input.MOUSE_MODE_VISIBLE 
		get_node("Level/TextEdit").visible =true
		get_node("Level/orb_button").visible =true
	elif current_state is PauseState:
		change_state(PlayState.new(self))
		print("toggle play")
		Input.mouse_mode = Input.MOUSE_MODE_CONFINED_HIDDEN
		get_node("Level/TextEdit").visible =false
		get_node("Level/orb_button").visible =false
