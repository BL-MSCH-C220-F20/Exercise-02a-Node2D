extends Label

var score = 0
var increasing = false
onready var global = get_node("/root/Global")

func _physics_process(delta):
	if global.won:
		return
	text = "Score: " + str(score) + " / 100"
	if score >= 100:
		global.won = true
		get_node("/root/Game/HUD/Win_Screen").visible = true

func _on_Increase_timeout():
	if increasing:
		score = min(100, score + 1)

func _on_Decay_timeout():
	if not increasing:
		score = max(0, score - 1)


func _on_Target_area_entered(area):
	increasing = true


func _on_Target_area_exited(area):
	increasing = false
