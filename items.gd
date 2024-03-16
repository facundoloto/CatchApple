extends Area2D

var isApple = true
@onready var player = get_node("res://Player/Player.tscn")
var colletion = preload("res://items.tscn")
var Speed := 1.0
var scorePlayer = 0

func _ready():
	if randf() > .5:
		isApple = false
	
	if !isApple:
		$Apple.texture =  preload("res://Assets/spike.png")

func _on_body_entered(body):
	if body.is_in_group("Player"):
		if isApple:
			scorePlayer+=1
			body.scoreUp(scorePlayer)
		else:
			body.died()
	queue_free()

func _process(delta):
	position.y += Speed
