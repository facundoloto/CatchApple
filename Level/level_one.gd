extends Node

@onready var player = get_node("Player")
# Called when the node enters the scene tree for the first time.
func _ready():
	$Game.play()
	player.connect("player_died",died )


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func died():
	get_tree().change_scene_to_file("res://Scenes/GameOver.tscn")
