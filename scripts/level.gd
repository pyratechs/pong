extends Node
var placarpl = 0
var placarop = 0

func _on_goal_l_body_entered(body: Node2D) -> void:
	ball_reset()
	if (placarpl - placarop) >2:
		$NME.speed = $NME.speed *0.95
	$NME.speed = $NME.speed * 0.99
	placarpl += 1
	

func _on_goal_r_body_entered(body: Node2D) -> void:
	ball_reset()
	if (placarop - placarpl) >2:
		$NME.speed = $NME.speed * 1.05 
	else:$NME.speed = $NME.speed * 1.01
	placarop += 1
	

func _process(delta: float) -> void:
	$SCOREPL.text = str(placarpl)
	$SCOREOP.text = str(placarop)

func ball_reset():
	$ball.position = Vector2(720,360)
	$ball.speed = $ball.speed * (750/$ball.speed)
