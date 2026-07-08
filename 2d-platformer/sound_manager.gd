extends Node

var pool_size = 5
var pool = []

func _ready():
	# Create 5 players once when the game starts
	for i in range(pool_size):
		var player = AudioStreamPlayer.new()
		add_child(player)
		pool.append(player)

func play_sfx(sfx_name: String):
	# This automatically adds the correct folder and extension
	var sfx_path = "res://sounds/" + sfx_name + ".wav"
	
	for player in pool:
		if not player.playing:
			# Load the sound file based on the name provided
			player.stream = load(sfx_path)
			player.volume_db = -10.0
			player.play()
			return # Exit once we find a free player
