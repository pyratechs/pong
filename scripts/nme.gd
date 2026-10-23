extends CharacterBody2D

var speed = 9
var ball

func _ready() -> void:
	ball = get_parent().get_node("ball")


func _physics_process(delta: float) -> void:
	move_and_collide(Vector2(0,get_opponent_direction()) * speed)
	position.x = clamp(position.x, 1376, 1376)
	if ball.position.y >20 and ball.position.y <700:
		clamp(position.y, 20,700)

func get_opponent_direction():
	if abs(ball.position.y - position.y) > 64 and abs(ball.position.x - position.x) < 960:
		if ball.position.y < position.y: return -1
		else: return 1
	else: return 0

func limiter ():
	if speed > 18:
		speed = speed * 0.75
