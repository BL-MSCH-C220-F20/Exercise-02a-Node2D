extends Node

var won = false

func _process(delta):
	if Input.is_action_pressed("quit"):	
		get_tree().quit()
