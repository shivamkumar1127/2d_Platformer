extends Area2D

# These variables are accessible to all functions in this script
@onready var death_label: Label = $"../CanvasLayer/DeathMessage"
@onready var timer: Timer = $Timer

# This function handles the death logic
func _on_body_entered(body: Node2D) -> void:
	print("you died")
	death_label.visible = true
	body.set_physics_process(false)
	body.hide()
	timer.start()

# This function handles the scene restart
func _on_timer_timeout() -> void:
	get_tree().reload_current_scene()
