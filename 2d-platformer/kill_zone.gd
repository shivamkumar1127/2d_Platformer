extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		get_parent().get_node("CanvasLayer/DeathMessage").visible = true
		GameManager.reset_score()
		await get_tree().create_timer(1.0).timeout
		get_tree().reload_current_scene()
