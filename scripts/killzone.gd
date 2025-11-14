extends Area2D

@onready var timer: Timer = $Timer

@onready var sfx_die: AudioStreamPlayer2D = $sfx_die



func _on_body_entered(body: Node2D) -> void:
	print("You died!")
	Engine.time_scale = 0.5
	timer.start()
	sfx_die.play()
	


func _on_timer_timeout() -> void:
	Engine.time_scale = 1.0
	get_tree().reload_current_scene()
