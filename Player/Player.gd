extends CharacterBody2D

var speed = 150
signal score_up 
signal player_died
@onready var animated_sprite_2d = $AnimatedSprite2D


func _physics_process(delta):
		move()
		jump()
	

func move():
		var direction = Input.get_axis("ui_left", "ui_right")
		velocity.x = direction * speed
		if velocity.x !=0:
			animated_sprite_2d.flip_h = direction < 0
			animated_sprite_2d.play("run")			
		else:
			animated_sprite_2d.play("idle")
		move_and_slide()

func jump():
		var jump_velocity = Input.get_action_strength("ui_accept")
		
		if jump_velocity != 0 and is_on_floor():
			velocity.y = 0
			velocity.y -= jump_velocity * 350
		
		if !is_on_floor():
			velocity.y += 10
		move_and_slide()
	
func scoreUp():
		emit_signal("score_up")
		
func died():
		animated_sprite_2d.play("hurt")
		emit_signal("player_died")
		
