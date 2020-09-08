extends Node2D

var rot_steps = 0
var posx_steps = 0
var posy_steps = 0
var scale_steps = 0

onready var global = get_node("/root/Global")

func translating(px,py,amount):
	pass

func rotating(rad):
	pass
	
func scaling(amount):
	pass


func _physics_process(delta):
	if global.won:
		return
	translating(posx_steps,posy_steps,600)
	rotating(rot_steps)
	scaling(scale_steps)

