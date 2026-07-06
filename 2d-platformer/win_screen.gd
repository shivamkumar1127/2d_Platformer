extends Control

func _on_menu_button_pressed() -> void:
	# This triggers the change more smoothly
	get_tree().call_deferred("change_scene_to_file", "res://main_menu.tscn")

func _ready() -> void:
	# Removed the await delay line to make the text appear instantly
	if has_node("Label"):
		$Label.text = "You Won! You collected " + str(GameManager.score) + " coins"
