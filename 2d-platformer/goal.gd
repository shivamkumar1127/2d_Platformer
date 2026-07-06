extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		print("You Won!")
		# Optional: Hide the player or show a winning UI
		get_tree().call_deferred("change_scene_to_file", "res://win_screen.tscn")
