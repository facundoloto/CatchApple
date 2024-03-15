extends Node

@onready var player = get_node("AreaCollision/Player")
var scorePlayer = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	$GameSound.play()
	player.connect("score_up",scoreUp )
	player.connect("player_died",died )
	
func scoreUp():
	scorePlayer+=1
	$Score.text = str(scorePlayer)

func died():
	$GameSound.stop()
	$gameOver/GameOver.play()
	$gameOver/scoreFinal.text = str(scorePlayer)
	get_tree().paused = true
	$gameOver.show()
	
	
func _on_reload_pressed():
	get_tree().paused = false	
	get_tree().reload_current_scene()
