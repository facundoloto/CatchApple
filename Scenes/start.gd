extends Node2D

var main = preload("res://main.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	$Intro.play()
	$gameStart/CharacterBody2D/AnimatedSprite2D.play("idle")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_play_pressed():
	get_tree().change_scene_to_packed(main)
	
