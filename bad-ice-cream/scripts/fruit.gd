extends Area2D

signal collected


func _ready() -> void:
	global_position = Level.cell_to_world(Level.world_to_cell(global_position))
	body_entered.connect(_on_body_entered)


func _on_body_entered(body: Node2D) -> void:
	if body is Player:
		set_deferred("monitoring", false)
		collected.emit()
		queue_free()
