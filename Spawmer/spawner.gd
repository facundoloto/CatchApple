extends Node2D

var colletion = preload("res://items.tscn")
var colletion_two = preload("res://items.tscn")
var colletion_three = preload("res://items.tscn")

var level = 1

func _ready():
	
	$Timer.stop()
	$Timer.wait_time = randf_range(2,4.0)
	$Timer.start()
	#$Timer.stop()
	

func _on_timer_timeout():
	randomize()
	
	#var colletions = [colletion, colletion_two, colletion_three]
	#var items = colletions[randi()% colletions.size()]
	var colletionObject = colletion.instantiate()
		
	colletionObject.position= Vector2(randf_range(2, 580) , 50)
	level+=0.1
		
	if level <= 7:
		colletionObject.Speed += level	
	else:
		colletionObject.Speed += 7
		
	add_child(colletionObject)
