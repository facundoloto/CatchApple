extends Node2D

var colletion = preload("res://items.tscn")
var level = 4

func _ready():
	$Timer.stop()
	$Timer.wait_time = randf_range(2,4.0)
	$Timer.start()

func _on_timer_timeout():
	level +=.08
	if $Timer.wait_time > .1:
		$Timer.wait_time -= .01
	var colletionObject = colletion.instantiate()
	colletionObject.Speed += level	
	add_child(colletionObject)
