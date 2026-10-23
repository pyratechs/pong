extends CharacterBody2D

var speed = 12

func _physics_process(_delta):
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("up"):
		velocity.y -= 1
	if Input.is_action_pressed("down"):
		velocity.y += 1
	if Input.is_action_pressed("left"):
		rotation = 60
	#if Input.is_action_pressed("right"):
	#	rotation = -60
	else: rotation = 0
	move_and_collide(velocity * speed)
	position.x = clamp(position.x, 64, 64)
