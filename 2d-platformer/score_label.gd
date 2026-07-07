extends Label

func _process(_delta: float) -> void:
	text = "Coins: " + str(GameManager.score)
	# The print statement that was causing the spam is removed


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://main_menu.tscn")
