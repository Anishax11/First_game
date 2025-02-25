extends Area2D

@onready var game_mananger: Node = %GameMananger
@onready var animation_player: AnimationPlayer = $AnimationPlayer




func _on_body_entered(body):
	game_mananger.add_points()
	animation_player.play("pickup")
	 # Replace with function body.
