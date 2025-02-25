extends Area2D

@onready var timer: Timer = $Timer
@onready var animation_player: AnimationPlayer = $AnimationPlayer


func _on_body_entered(body):
	print("You have died!")
	animation_player.play("hurt")
	Engine.time_scale=0.5
	body.get_node("CollisionShape2D").queue_free()
	
	timer.start()
	





func _on_timer_timeout() -> void:
	Engine.time_scale=1
	get_tree().reload_current_scene()
