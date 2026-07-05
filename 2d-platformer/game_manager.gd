extends Node

var score = 0

func add_point():
	score += 1
	print("Current score: ", score)

func reset_score():
	score = 0
