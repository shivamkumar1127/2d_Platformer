extends Area2D

<<<<<<< HEAD

=======
>>>>>>> 4254ac1caf9fb86dd3a13969bcab08a16a0760ce
func _on_body_entered(body: Node2D) -> void:
	print("+1 coin")
	GameManager.add_point() 
	queue_free()
