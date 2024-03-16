extends Node2D

var main = preload("res://main.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	$GameOverSound.play()
	$CharacterBody2D/AnimatedSprite2D.play("hurt")
	$gameOver/point.text = str(Global.get_score())
	Global.set_score(0)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_reload_pressed():
	get_tree().change_scene_to_packed(main)
	
