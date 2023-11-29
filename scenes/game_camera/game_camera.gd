extends Camera2D

class_name GameCamera

var player: Player = null
const CAMERA_SMOOTHING: int = 10


func _ready() -> void:
	make_current()
	player = get_tree().get_first_node_in_group("player")


func _physics_process(delta: float) -> void:
	if player == null:
		return
	global_position = global_position.lerp(player.global_position, CAMERA_SMOOTHING * delta)

