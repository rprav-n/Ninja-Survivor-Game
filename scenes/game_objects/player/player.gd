extends CharacterBody2D

class_name Player

const MAX_SPEED: int = 130
const ACCELERATION: int = 800


func _physics_process(delta: float) -> void:
	var movement_vector: Vector2 = get_movement_vector()
	velocity = velocity.move_toward(movement_vector * MAX_SPEED, ACCELERATION * delta)
	move_and_slide()


func get_movement_vector() -> Vector2:
	return Input.get_vector("move_left", "move_right", "move_up", "move_down")
