extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		# 1. Find the label and turn it on
		get_parent().get_node("CanvasLayer/DeathMessage").visible = true
		
		# 2. Reset the score
		GameManager.reset_score()
		
		# 3. Wait for 1 second before reloading
		await get_tree().create_timer(1.0).timeout
		
		# 4. Now reload the scene
		get_tree().reload_current_scene()
