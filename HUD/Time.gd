extends Label

var time = 0
onready var global = get_node("/root/Global")


func _physics_process(delta):
	if global.won:
		return
	self.text = "Time: " + str(time)

func _on_Timer_timeout():
	time += 1
