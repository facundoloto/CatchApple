extends Control

#@onready var player = get_node("res://Player/Player.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	#player.connect("score_up",scoreUp)
	#print(Global.get_score())
	#$points.text = str(Global.get_score())


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$points.text = str(Global.get_score())

#func scoreUp(new_score):
	
