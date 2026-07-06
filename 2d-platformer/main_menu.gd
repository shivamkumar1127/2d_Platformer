extends Control

func _on_start_button_pressed() -> void:
	# Change "res://node_2d.tscn" to the path of your actual game level
	get_tree().change_scene_to_file("res://node_2d.tscn")

func _on_quit_button_pressed() -> void:
	get_tree().quit()
