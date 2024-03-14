extends Node

@onready var player = get_node("AreaCollision/Player")
var scorePlayer = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	player.connect("score_up",scoreUp )
	player.connect("player_died",died )


func _on_play_pressed():
	get_tree().reload_current_scene()
	
func scoreUp():
	scorePlayer+=1
	print(scorePlayer)
	$Score.text = str(scorePlayer)

func died():
	$gameOver/scoreFinal.text = str(scorePlayer)
	$gameOver.show()
	#$Play.show()
	get_tree().paused = true
	
func _on_reload_pressed():
	$gameOver.hide()
	get_tree().paused = false	
	get_tree().reload_current_scene()
