extends Area2D

@onready var timer: Timer = $Timer
# Reference the UI label you just created
@onready var death_message: Label = get_node("../CanvasLayer/DeathMessage")

func _on_body_entered(body: Node2D) -> void:
	print("you died")
	
	# Show the UI label
	death_message.visible = true
	
	# Optional: Stop the player from moving so they don't slide 
	# while the death message is showing
	body.queue_free() 
	
	timer.start()

func _on_timer_timeout() -> void:
	get_tree().reload_current_scene()
