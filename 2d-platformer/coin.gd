extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		# Handle the game logic
		GameManager.add_point()
		
		# Hide the coin and disable collision
		visible = false
		$CollisionShape2D.set_deferred("disabled", true)
		$coins/CoinPlayer.play()
		await $coins/CoinPlayer.finished
		# Wait a moment before removing the object from the scene
		await get_tree().create_timer(0.2).timeout
		queue_free()
