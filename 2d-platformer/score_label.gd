extends Label

func _process(_delta: float) -> void:
	text = "Coins: " + str(GameManager.score)
	# The print statement that was causing the spam is removed
