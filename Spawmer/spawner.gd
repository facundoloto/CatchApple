extends Node2D

var colletion = preload("res://items.tscn")


func _ready():
	$Timer.stop()
	$Timer.wait_time = randf_range(2,4.0)
	$Timer.start()

func _on_timer_timeout():
	var colletionObject = colletion.instantiate()
	add_child(colletionObject)
