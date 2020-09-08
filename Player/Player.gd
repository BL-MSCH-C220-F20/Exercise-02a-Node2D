extends Area2D

onready var p = get_parent()
onready var global = get_node("/root/Global")


func _physics_process(delta):
	if global.won:
		return

	position = get_viewport().get_mouse_position()
	global_position.x = clamp(global_position.x, 0, 1024)
	global_position.y = clamp(global_position.y, 0, 600)


func _on_Player_area_entered(area):
	$Sprite.modulate = Color(0.3,0.3,1,1)

func _on_Player_area_exited(area):
	$Sprite.modulate = Color(1,1,1,1)
