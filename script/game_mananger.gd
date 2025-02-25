extends Node

@onready var score_label: Label = $ScoreLabel

var score=0
# Called when the node enters the scene tree for the first time.
func add_points():
	score+=1
	score_label.text="You have collected "+str(score)+" coins"
	 # Replace with function body.
