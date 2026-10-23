extends CharacterBody2D

var speed = 500


func _ready():
	randomize()
	velocity.x = [-1,1][randi() % 2]
	velocity.y = [-0.6,0.6][randi() % 2]

func _physics_process(_delta):
	var collision_object = move_and_collide(velocity * speed * _delta)
	if collision_object:
		velocity = velocity.bounce(collision_object.get_normal())
		if speed > 2500:
			speed = speed * 0.9
		else: speed = speed * 1.05
		
