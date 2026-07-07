extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		# 1. Stop the player's movement immediately
		body.process_mode = Node.PROCESS_MODE_DISABLED 
		
		# 2. Hide the player so they don't look "alive" while waiting
		body.visible = false
		
		# 3. Show the death message
		var death_message = get_tree().current_scene.get_node_or_null("CanvasLayer/DeathMessage")
		if death_message:
			death_message.visible = true
		
		# 4. Reset score and wait
		GameManager.reset_score()
		await get_tree().create_timer(1.0).timeout
		
		# 5. Reload the scene
		get_tree().reload_current_scene()
